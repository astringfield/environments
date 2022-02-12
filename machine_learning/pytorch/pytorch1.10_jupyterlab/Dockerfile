FROM pytorch1.10

# Install JupyterLab and any wanted extensions
RUN python3.8 -m pip install --no-cache-dir jupyterlab

# Enable extensions
RUN jupyter nbextension enable highlight_selected_word/main
RUN jupyter labextension list
