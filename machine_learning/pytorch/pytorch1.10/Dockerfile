FROM cuda11.3

ARG HOST_USER
ENV PATH="/home/$HOST_USER/.local/bin:${PATH}"

# Install the pytorch packages
RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install --no-cache-dir torch==1.10.0+cu113 torchvision==0.11.1+cu113 torchaudio==0.10.0+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
RUN python3.8 -m pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.10.0+cu113.html
RUN python3.8 -m pip install --no-cache-dir numpy PILLOW opencv-python autograd scipy hdf5storage tensorboard tqdm pylint black pytest tox pandas matplotlib psycopg[binary]

RUN python3.8 -m pip config -v list
USER root
RUN --mount=type=secret,id=pipconf,dst=/etc/pip.conf ls -lah /etc && cat /etc/pip.conf && python3.8 -m pip install SomnoMed -vv
USER $HOST_USER
