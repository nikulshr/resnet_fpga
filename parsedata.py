import h5py

dataset =[]

# read the data into dataset
with h5py.File('GOLD_XYZ_OSC.0001_1024.hdf5') as h5_file:
	for gname, group in h5_file.items():
		print(group)
		dataset.append(group)
    # print(dataset[0][])

# parse them into train and test dataset 
	ftrain = h5py.File('trainset.h5','w')
	ftest = h5py.File('testset.h5','w')
	Ynum = 0
	index = 0
	count = 0
	flag = True
	trainXset = ftrain.create_dataset('X',data = dataset[0][0][None,...], maxshape = (2531904,1024,2))
	trainYset = ftrain.create_dataset('Y',data = dataset[1][0][None,...], maxshape = (2531904,24))
	testXset = ftest.create_dataset('X',data = dataset[0][0][None,...],maxshape = (24000,1024,2))
	testYset = ftest.create_dataset('Y',data = dataset[1][0][None,...],maxshape = (24000,24))
	# print(dataset[1][index][Ynum])
	trainXset.resize((2531904, 1024, 2))
	trainYset.resize((2531904, 24))
	testXset.resize((24000, 1024, 2))
	testYset.resize((24000, 24))
	counttest = 0
	counttrain = 0
	countall = 0
# I give 24000 data into test dataset and the rest would
# go into train dataset
	for data in dataset[1]:
		if dataset[1][index][Ynum] == 0:
			for tmpY in range(0,24):
				if dataset[1][index][tmpY] == 1:
					Ynum = tmpY
					flag = True
					print("find next one")
					break
		if dataset[1][index][Ynum] == 1 and flag == True:
			lattercounttest = counttest + 1
			testXset[counttest:lattercounttest] = dataset[0][index]
			testYset[counttest:lattercounttest] = dataset[1][index]
			# Ynum = Ynum+1
			index = index + 1
			count = count + 1
			counttest = counttest + 1
			if count == 1000:
				flag = False
				count = 0
				print(str(Ynum) + ":testsetdone")
				# Ynum = Ynum + 1

		else:
			lattercounttrain = counttrain + 1
			trainXset[counttrain:lattercounttrain] = dataset[0][index]
			trainYset[counttrain:lattercounttrain] = dataset[1][index]
			index = index + 1
			counttrain = counttrain + 1
		
# Let you see the processing
		if index % 1000 == 0:
			# countall = countall + 1
			print(index/2555904)


	


