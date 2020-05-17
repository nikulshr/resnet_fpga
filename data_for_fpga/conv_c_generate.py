import twn_generator as twn
import csv
import os

def make_conv( idx, model_dir ):
    f_in = model_dir + "/new_resnet_covlyr%d.csv" % idx
    f_tree = model_dir + "/new_resnet_covlyr%d_td_cse.csv" % idx
    mod_out = "conv%d" % idx
    f_out = model_dir + "/" + mod_out
    if not os.path.exists(f_tree):
        matrix, no_in, no_out, initial_no_adds = twn.get_matrix( f_in )
        matrix = twn.td_CSE( matrix )
        twn.write_output( f_tree, matrix, initial_no_adds, no_in, no_out )
        twn.verify_tree( f_in, f_tree )
    twn.write_tree_to_c( f_tree, f_out )

for idx in range(1,19):
    make_conv(idx,'./')
