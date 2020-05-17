for i in {1..18}
do
	python3 generate_bn_vec.py --file_in new_resnet_bnlyr${i}_a_b.csv --file_out bn${i}.sv --bn_id $i --rshift 8 --bw_in 16 --bw_out 1 --maxval 1
done
