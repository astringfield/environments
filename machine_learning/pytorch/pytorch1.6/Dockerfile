FROM cuda10.1

# Install the pytorch packages
RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install --no-cache-dir torch==1.6.0+cu101 torchvision==0.7.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html
RUN python3.8 -m pip install --no-cache-dir torch-scatter==2.0.5 -f https://pytorch-geometric.com/whl/torch-1.6.0+cu101.html
RUN python3.8 -m pip install --no-cache-dir torch-sparse==0.6.8 -f https://pytorch-geometric.com/whl/torch-1.6.0+cu101.html
RUN python3.8 -m pip install --no-cache-dir torch-cluster==1.5.8 -f https://pytorch-geometric.com/whl/torch-1.6.0+cu101.html
RUN python3.8 -m pip install --no-cache-dir torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.6.0+cu101.html
RUN python3.8 -m pip install --no-cache-dir torch-geometric
RUN python3.8 -m pip install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tensorboard tqdm
