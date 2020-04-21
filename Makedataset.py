# X is the 2D input and Y is the classification result
# This func just append them together into a dataset.
def make_dataset(file_path, train=True):
 
  datasets = []
  dataset = []

  if train:
    with h5py.File(file_path) as h5_file:
      for gname, group in h5_file.items():
          # print(group)
        datasets.append(group)
  
      idx = 0
      for things in datasets[0]:
        dataset.append(datasets[0][idx],datasets[1][idx])
        idx = idx +1
  
  else:
    with h5py.File(file_path) as h5_file:
      for gname, group in h5_file.items():
          # print(group)
        datasets.append(group)
  
      idx = 0
      for things in datasets[0]:
        dataset.append(datasets[0][idx],datasets[1][idx])
        idx = idx +1
# # 
  return dataset

class MyDataSet(data.Dataset):
  # The "train" parameter would tell which dataset to use.
  def __init__(self, file_path, transform = None, train = True):
    self.train = train
    if self.train:
      self.train_set_path = make_dataset(file_path, train)
    else:
      self.test_set_path = make_dataset(file_path, train)

  def __getitem__(self, index):
    if self.train:
      img, label = self.train_set_path[index]
      if self.transform is not None:
        img = self.transform(img)
      return img,label
    else:
      img, label = self.test_set_path[index]
      if self.transform is not None:
        img = self.transform(img)
      return img,label

  def __len__(self):
    if self.train:
      return len(self.train_set_path) 

    else:
      return len(self.test_set_path)



