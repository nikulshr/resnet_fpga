import twn_generator as twn
import torch
import numpy as np

def decode_twn(net, nu, fname):
	clip_val = netnump
	thres = nu * np.mean(np.absolute(clip_val))
	g_e = np.greater_equal(clip_val, thres).astype(float)
	l_e = np.less_equal(clip_val, -thres).astype(float)
	unmasked = np.multiply(g_e+l_e, clip_val)
	eta = np.mean(np.absolute(unmasked))
	t_x = np.where(np.less_equal(unmasked, -thres), -1.0, unmasked)
	t_x = np.where(np.greater_equal(unmasked, thres), 1.0, t_x)
	t_x = np.round(t_x).astype(int)
	print(t_x)
	f = open(fname, "w")
	wrt = csv.writer(f)
	for x in t_x:
		wrt.writerow(x)
	f.close()
	return eta


pthfile = "resnet33_new_relu.pth"
net = torch.load(pthfile)
# nu = [ 0.7 ] + [ 1.2 ]*6 + [ 0.7 ]*2
nu = 1.0
# for lyr_idx in range (1,18):
lyr_idx = 1
lyr_name = "lyr" + str(lyr_idx)
netnump = net['conv1.1.weight'].cpu().numpy()
eta_r = decode_twn(netnump, nu,"resnet_cov" + lyr_name + ".csv")
print(eta_r)
