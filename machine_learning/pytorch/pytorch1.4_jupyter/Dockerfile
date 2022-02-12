FROM pytorch1.4

# Install jupyter notebooks
RUN pip3 install --no-cache-dir ipython
RUN pip3 install --no-cache-dir jupyter notebook
RUN pip3 install --no-cache-dir jupyter_contrib_nbextensions
RUN pip3 install --no-cache-dir jupyter_nbextensions_configurator
RUN jupyter contrib nbextension install --system
RUN jupyter nbextensions_configurator enable --system
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension install --py jupyter_highlight_selected_word
RUN jupyter nbextension enable highlight_selected_word/main

EXPOSE 8888
