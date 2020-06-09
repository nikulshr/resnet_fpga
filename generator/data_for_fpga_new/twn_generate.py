import twn_generator as twn
import argparse

def get_args():
	parser = argparse.ArgumentParser()
	parser.add_argument( "--matrix_fname", type = str, required = True,
	                     help="The csv file with values 1,0 or -1")
	parser.add_argument( "--cse_fname", type = str, required = True,
	                     help="Where to write the op list file")
	parser.add_argument( "--module_name", type = str, required = True,
	                     help = "The name of the module to create, will create the file $module_name.v" )
	parser.add_argument( "--BW_in", type = int, required = True,
	                     help = "The bitwidth of the inputs" )
	parser.add_argument( "--BW_out", type = int,
	                     help = "The bitwidth of the outputs, defaults to BW_in if not given" )
	parser.add_argument( "--serial", action="store_true",
	                     help = "Use serial adders instead" )
	return parser.parse_args()

# matrix_fname = "resnet_cov1.csv"
args = get_args()
matrix, no_in, no_out, initial_no_adds = twn.get_matrix(args.matrix_fname)
matrix = twn.td_CSE(matrix)
twn.write_output(args.cse_fname, matrix, initial_no_adds, no_in, no_out)
twn.verify_tree(args.matrix_fname, args.cse_fname)
if args.BW_out is None:
	BW_out = args.BW_in
else:
	BW_out = args.BW_out
f = open(args.module_name+".sv","w")
create_op = twn.create_normal_add_op
if args.serial:
	twn.write_serial_adder_module("serial_adder.sv")
	create_op = twn.create_serial_add_op
f.write(twn.SMM_generate(args.cse_fname,args.module_name, args.BW_in, BW_out, create_op))
f.close()
