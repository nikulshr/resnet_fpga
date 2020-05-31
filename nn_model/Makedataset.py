from torch.utils import data
import h5py
# X is the 2D input and Y is the classification result
# This func just append them together into a dataset.
def make_dataset(file_path, train=True):
 
  datasets = []
  dataset = []

  if train:
    fhd5 = h5py.File(file_path,'r')
    for gname, group in fhd5.items():
      datasets.append(group)
    idx = 0
    for things in datasets[0]:
      # dataset.append(datasets[0][idx],datasets[1][idx])
      dataset.append([idx,idx])
      idx = idx +1
  
  else:
    fhd5 = h5py.File(file_path,'r')
    for gname, group in fhd5.items():
      datasets.append(group)
    idx = 0
    for things in datasets[0]:
      dataset.append([idx,idx])
      # dataset.append(datasets[0][idx],datasets[1][idx])
      idx = idx +1
# # 
  return dataset

class MyDataSet(data.Dataset):
  # The "train" parameter would tell which dataset to use.
  def __init__(self, file_path, transform = None, train = True):
    self.train = train
    if self.train:
      traindatasets = []
      fhd5 = h5py.File(file_path,'r')
      for gname, group in fhd5.items():
          # print(group)
        traindatasets.append(group)
      self.train_set_path = make_dataset(file_path, train)
    else:
      testdatasets = []
      fhd5 = h5py.File(file_path,'r')
      for gname, group in fhd5.items():
          # print(group)
        testdatasets.append(group)
      self.test_set_path = make_dataset(file_path, train)

  def __getitem__(self, index):
    if self.train:
      img_path, label_path = self.train_set_path[index]
      img = self.traindatasets[0][img_path]
      label = self.traindatasets[1][label_path]
      if self.transform is not None:
        img = self.transform(img)
      return img,label
    else:
      img_path, label_path = self.test_set_path[index]
      img = self.testdatasets[0][img_path]
      label = self.testdatasets[1][label_path]
      if self.transform is not None:
        img = self.transform(img)
      return img,label

  def __len__(self):
    if self.train:
      return len(self.train_set_path) 

    else:
      return len(self.test_set_path)



