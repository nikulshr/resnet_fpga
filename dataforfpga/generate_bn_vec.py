import csv
import sys
import math
import argparse
import common

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument( "--file_in", type = str, required = True,
                         help="A CSV with the quantized shifted (a,b) values ( must be ints )")
    parser.add_argument( "--file_out", type = str, required = True,
                         help="The filename to write the quantized verilog output to")
    parser.add_argument( "--bn_id", type = str, required = True,
                         help="A unique ID for the BN ( normally the layer index )")
    parser.add_argument("--rshift", type=int, default = 0,
                        help = "The rshift to do after calculating BN-RELU before outputting it" )
    parser.add_argument("--bw_in", type=int, default = 16,
                        help = "What bitwidth to expect at the input" )
    parser.add_argument("--bw_out", type=int, default = 16,
                        help = "What bitwidth to produce at the output" )
    parser.add_argument("--maxval", type=int, default = -1,
                        help = "The max value to output from the BN, -1 is disabled ( default )" )
    return parser.parse_args()

def make_hex( data ):
    bw = math.ceil( math.log2( max([ abs(x) for x in data ]) + 1) ) + 1
    data_hex = list(reversed([ format_hex(x, bw) for x in data ]))
    data_str = "{ " + ", ".join( data_hex ) + " }"
    return data_str, bw

def unsigned( x, bits = 16 ):
    return ( x + ( 1 << bits ) ) % ( 1 << bits ) # make unsigned

def format_hex( x, bits = 16 ):
    chars = int( math.ceil( bits / 4 ) )
    x = unsigned( x, bits )
    return ("%d'h{:0%dx}" % ( bits, chars ) ).format(x)

def get_data_from_csv( fname, mul = 1, use_int = False ):
    f = open( fname )
    rdr = csv.reader( f )
    data = [ [ int(round(float(x)*mul)) if use_int else float(x)*mul for x in y ] for y in rdr ]
    f.close()
    return data

if __name__ == "__main__":
    args = get_args()
    data = get_data_from_csv( args.file_in, use_int = True )
    # work out the bw needed
    CH_IN = len(data[0])
    a_str, a_bw = make_hex( data[0] )
    b_str, b_bw = make_hex( data[1] )
    f_out = open( args.file_out, "w" )
    bn_id_u = args.bn_id.upper()
    f_out.write( "localparam BN%s_CH = %d;\n" % ( bn_id_u, CH_IN ))
    f_out.write( "localparam BN%s_BW_A = %d;\n" % ( bn_id_u, a_bw ))
    f_out.write( "localparam BN%s_BW_B = %d;\n" % ( bn_id_u, b_bw ))
    f_out.write( "localparam BN%s_RSHIFT = %d;\n" % ( bn_id_u, args.rshift ))
    f_out.write( "localparam BN%s_BW_IN = %d;\n" % ( bn_id_u, args.bw_in ))
    f_out.write( "localparam BN%s_BW_OUT = %d;\n" % ( bn_id_u, args.bw_out ))
    f_out.write( "localparam BN%s_MAXVAL = %d;\n" % ( bn_id_u, args.maxval ))
    f_out.write( "reg [BN%s_CH-1:0][BN%s_BW_A-1:0] bn%s_a = " % ( bn_id_u, bn_id_u, args.bn_id ))
    f_out.write( a_str + ";\n" )
    f_out.write( "reg [BN%s_CH-1:0][BN%s_BW_B-1:0] bn%s_b = " % ( bn_id_u, bn_id_u, args.bn_id ))
    f_out.write( b_str + ";\n" )
    f_out.close()
