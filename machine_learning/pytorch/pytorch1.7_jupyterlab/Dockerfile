FROM pytorch1.7

# Install JupyterLab and any wanted extensions
RUN python3.8 -m pip install --no-cache-dir jupyterlab
RUN jupyter labextension install @lckr/jupyterlab_variableinspector

# Enable extensions
RUN jupyter nbextension enable highlight_selected_word/main
RUN jupyter labextension list
