FROM pytorch1.10

# Install JupyterLab and any wanted extensions
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab_vim
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab_git
RUN python3.8 -m pip install --user --no-cache-dir jupyter_tensorboard
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab-system-monitor
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab_latex
RUN python3.8 -m pip install --user --no-cache-dir lckr-jupyterlab-variableinspector
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab-system-monitor
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab-nvdashboard
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab_sql
RUN python3.8 -m pip install --user --no-cache-dir xeus-python
RUN python3.8 -m pip install --user --no-cache-dir jupyterlab_theme_solarized_dark
RUN python3.8 -m pip install --user --no-cache-dir qgrid
RUN python3.8 -m pip install --user --no-cache-dir nbconvert[webpdf]
RUN python3.8 -m pip install --user --no-cache-dir itables
RUN python3.8 -m pip install --user --no-cache-dir itables pyglet ipympl pandoc
RUN python3.8 -m pip install --user --no-cache-dir jupyter-book


RUN python3.8 -m pip install --user --no-cache-dir trimesh

# Enable extensions
RUN jupyter server extension enable jupyterlab_vim
RUN jupyter server extension enable jupyterlab_git
RUN jupyter server extension enable jupyterlab_tensorboard
RUN jupyter server extension enable jupyterlab-system-monitor
RUN jupyter server extension enable jupyterlab_latex
RUN jupyter server extension enable jupyterlab_variableinspector
RUN jupyter server extension enable jupyterlab_nvdashboard
RUN jupyter server extension enable jupyterlab_sql
RUN jupyter server extension enable jupyterlab_theme_solarized_dark
RUN jupyter server extension enable qgrid

RUN jupyter labextension install jupyter-matplotlib

RUN jupyter labextension update --all
RUN jupyter labextension list
