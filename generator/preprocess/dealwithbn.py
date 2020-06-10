import twn_generator as twn
import csv
import torch
import numpy as np

def decode_twn(net, nu, fname):
    clip_val = netnump
    #print(clip_val)
    thres = nu * np.mean(np.absolute(clip_val))
    g_e = np.greater_equal(clip_val, thres).astype(float)
    l_e = np.less_equal(clip_val, -thres).astype(float)
    unmasked = np.multiply(g_e+l_e, clip_val)
    eta = np.mean(np.absolute(unmasked))
    t_x = np.where(np.less_equal(unmasked, -thres), -1.0, unmasked)
    t_x = np.where(np.greater_equal(unmasked, thres), 1.0, t_x)
    t_x = np.round(t_x).astype(int)
    #t_x = t_x.T
    print(t_x)
    #new_t_x = np.tile(t_x,(2,1))
    f = open(fname, "w")
    wrt = csv.writer(f)
    for x in t_x:
       # print(x)
        wrt.writerow(x)
    f.close()
    return eta

def write_bn(net, eta_r, gamma, beta, moving_mean, moving_var, lyr_name):
	abvars = twn.get_AB(moving_mean, moving_var, gamma, beta, eta_r)
	f = open("new_resnet_bn"+lyr_name+".csv","w")
	wrt = csv.write(f)
	for row in abvars:
		wrt.writerow(row)
	f.close()

pthfile = "resnet33_radioml_brevitas_epoch_0.pth"
net = torch.load(pthfile)
lyr_idx = 1
lyr_name = "lyr" + str(lyr_idx)
convnump = net['conv1.0.weight'].cpu().numpy()
gamma = net['conv1.1.weight'].cpu().numpy()
beta = net['conv1.1.bias'].cpu().numpy()
moving_mean = net['conv1.1.running_mean'].cpu().numpy()
moving_var = net['conv1.1.running_var'].cpu().numpy()
eta_r = decode_twn(netnump, nu,"new_resnet_cov" + lyr_name + ".csv")
write_bn(net, eta_r, gamma, beta, moving_mean, moving_var, lyr_name)

