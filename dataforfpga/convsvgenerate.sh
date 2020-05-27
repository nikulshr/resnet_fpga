for i in {1..18}
do
	python twn_generate.py --matrix_fname new_resnet_covlyr$i.csv --cse_fname conv${i}_tern_op_list.csv --module_name convlyr$i --BW_in 16
done
