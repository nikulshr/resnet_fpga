import twn_generator as twn
import csv
import sys
import os

#generate c file for batch normal layer
def make_bn( idx, model_dir, f_type = "lyr", a_prec = 8, b_prec = 14, r_shift = 8 ):
    f_in = model_dir + "/new_resnet_bn%s%d.csv" % (f_type,idx)
    f_a_b = model_dir + "/new_resnet_bn%s%d_a_b.csv" % (f_type,idx)
    f = open( f_in )
    rdr = csv.reader( f )
    data = [ [ float(y) for y in x ]for x in rdr ]
    f.close()
    f = open( f_a_b, "w" )
    wrt = csv.writer( f )
    wrt.writerow( [ round(x * ( 1 << a_prec )) for x in data[0] ] )
    wrt.writerow( [ round(x * ( 1 << b_prec )) for x in data[1] ] )
    f.close()
    if f_type == "lyr":
        f_out = model_dir + "/bn%d_a_b" % idx
    else:
        f_out = model_dir + "/bnd%d_a_b" % idx
    twn.write_bn_relu_to_c( f_a_b, r_shift, f_out )

# args = get_args()
for idx in range(1,19):
    make_bn( idx, "./" )
    print(idx)
