import h5py

dataset =[]
indices = []

mod_range = 2
num_samples = 10

with h5py.File('GOLD_XYZ_OSC.0001_1024.hdf5') as h5_file:
    for gname, group in h5_file.items():
        print(group)
        dataset.append(group)
        
    print(dataset)
    
    for i in range (0, mod_range): #modulation range 0,24
        temp = list(range(106496*i +4096*25, 106496*i + 4096*26)) #Get only SNR = 30dB
        print(dataset[2][106496*i + 4096*25])
        
        print(len(temp)) #4096
                                                                                                        
        #2555904
        #106496*24
        #4096*26 26 SNR values
        
        f = open('sample_mod_{:d}.txt'.format(i),'w')

        data = []

        for el in temp[0:num_samples]:
            data = dataset[0][el]
            for j in range(0,1024):
                f.write(str(data[j][0]) + '\t' + str(data[j][1]) +'\n')

        f.close()