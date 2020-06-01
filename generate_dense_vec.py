import csv
import sys
import math
import numpy as np
import argparse
# import common

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument( "--file_in", type = str, required = True,
                         help="A CSV with the floating point weights")
    parser.add_argument( "--file_out", type = str, required = True,
                         help="The filename to write the quantized verilog output to")
    parser.add_argument( "--lyr", type = int, required = True,
                         help="The unique number of the dense layer")
    parser.add_argument("--rshift", type=int, default = 0,
                        help = "How far to shift the float values in the csv with" )
    parser.add_argument("--bw_w", type=int, default = 16,
                        help = "What bitwidth to use for the weights" )
    parser.add_argument("--tput", type=int, default = 1,
                        help = "The throughput to use ( number of inputs each cycle )" )
    return parser.parse_args()

def get_data_from_csv( fname, mul = 1, use_int = False ):
    f = open( fname )
    rdr = csv.reader( f )
    data = [ [ int(round(float(x)*mul)) if use_int else float(x)*mul for x in y ] for y in rdr ]
    f.close()
    return data

def unsigned( x, bits = 16 ):
    return ( x + ( 1 << bits ) ) % ( 1 << bits ) # make unsigned

def format_hex( x, bits = 16 ):
    chars = int( math.ceil( bits / 4 ) )
    x = unsigned( x, bits )
    return ("%d'h{:0%dx}" % ( bits, chars ) ).format(x)

def get_weights( weights, bits, no_in ):
    w_vec = []
    for i in range( weights.shape[1] ):
        tmp_w = weights[:,i]
        agg_vecs = np.reshape( np.concatenate( [ tmp_w[i::no_in] for i in range( no_in ) ] ), [ no_in, -1] )
        agg_vecs = unsigned( agg_vecs, bits )
        mult_words = np.matmul( ( 1 << ( bits * np.array( range( no_in ) ) ) ), agg_vecs )
        hex_w = [ format_hex( x, bits*no_in ) for x in mult_words ]
        w_vec += [ "{ " + ", ".join( reversed(hex_w) ) + " }" ]
    return w_vec

if __name__ == "__main__":
    args = get_args()
    data = np.array(get_data_from_csv( args.file_in, ( 1 << args.rshift ), True ))
    w_str = get_weights( weights, args.bw_w, args.tput )
    f_out = open( args.file_out, "w" )
    d1_cyc = int(weights.shape[0]/args.tput)
    log2_d1_cyc = int(math.ceil(math.log2( d1_cyc )))
    f_out.write( "localparam D%s_IN_SIZE = %d;\n" % ( args.lyr, args.tput ) )
    f_out.write( "localparam D%s_BW_W = %d;\n" % ( args.lyr, args.bw_w ) )
    f_out.write( "localparam D%s_SHIFT = %d;\n" % ( args.lyr, args.rshift ) )
    f_out.write( "localparam LOG2_D%s_CYC = %d;\n" % ( args.lyr, log2_d1_cyc ) )
    f_out.write( "localparam D%s_CYC = %d;\n" % ( args.lyr, d1_cyc ) )
    f_out.write( "localparam D%s_CH = %d;\n" % ( args.lyr, weights.shape[1] ) )
    f_out.write( "reg [LOG2_D%s_CYC-1:0] d%s_cntr;\n" % ( args.lyr, args.lyr ) )
    f_out.write( "wire [D%s_CH-1:0][D%s_IN_SIZE*D%s_BW_W-1:0] dw_%s;\n" % ( args.lyr, args.lyr, args.lyr, args.lyr ) )
    for i, w in enumerate( w_str ):
        f_out.write( "reg [D%s_CYC-1:0][D%s_IN_SIZE*D%s_BW_W-1:0] dw_%s_%d = " % ( args.lyr, args.lyr, args.lyr, args.lyr, i ) )
        f_out.write( w )
        f_out.write( ";\n" )
        f_out.write( "assign dw_%s[%d] = dw_%s_%d[d%s_cntr];\n" % ( args.lyr, i, args.lyr, i, args.lyr ) )
    f_out.close()



