import h5py

dataset =[]

# read the data into dataset
with h5py.File('GOLD_XYZ_OSC.0001_1024.hdf5') as h5_file:
	for gname, group in h5_file.items():
		print(group)
		dataset.append(group)
    print(dataset[0][])

# parse them into train and test dataset 
	ftrain = h5py.File('traintest.h5','w')
	ftest = h5py.File('testset.h5','w')
	testXset = []
	trainXset = []
	trainYset = []
	testYset = []
	Ynum = 0
	index = 0
	count = 0
	flag = True
	# print(dataset[1][index][Ynum])

# I give 24000 data into test dataset and the rest would
# go into train dataset
	for data in dataset[1]:
		if dataset[1][index][Ynum] == 0:
			for tmpY in range(0,23):
				if dataset[1][index][tmpY] == 1:
					Ynum = tmpY
					flag = True
					print("find next one")
					break
		if dataset[1][index][Ynum] == 1 and flag == True:
			testXset.append(dataset[0][index])
			testYset.append(dataset[1][index])
			# Ynum = Ynum+1
			index = index + 1
			count = count + 1
			if count == 1000:
				flag = False
				count = 0
				print(str(Ynum) + ":testsetdone")
				# Ynum = Ynum + 1

		else:
			trainXset.append(dataset[0][index])
			trainYset.append(dataset[1][index])
			index = index + 1
		
# Let you see the processing
		if index % 1000 == 0:
			print(index/2555904)


	ftrain.create_dataset('X',data = trainXset)
	ftrain.create_dataset('Y',data = trainYset)
	ftest.create_dataset('X',data = testXset)
	ftest.create_dataset('Y',data = testYset)


