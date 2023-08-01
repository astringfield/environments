jupyter lab --port=7000 --notebook-dir ~/  # for setting up locally
# jupyter lab --ip='10.10.10.19' --port=7000 --notebook-dir /home/astringfield  # for setting up on a remote server
exit

# If the jupyter_lab environment is newly created, don't forget you need to do the following so that other venv/conda-envs are visible within jupyter-lab

# conda-install `nb_conda_kernels` into the jupyter_lab environment:
conda install -c conda-forge nb_conda_kernels

# pip-install the following packages into the venv/conda-env you'd like to use 
# within jupyter
pip install ipykernel ipywidgets 
