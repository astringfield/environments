FROM cuda10.1

# Install pytorch
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir torch==1.4.0 torchvision==0.5.0
RUN pip3 install --no-cache-dir torch-scatter==2.0.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-sparse==0.6.1 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-cluster==1.5.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
RUN pip3 install --no-cache-dir torch-geometric==1.4.3
RUN pip3 install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tqdm
