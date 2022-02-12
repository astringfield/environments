FROM pytorch1.6

# Following block is for jupyter notebooks
RUN python3.8 -m pip install --no-cache-dir ipython
RUN python3.8 -m pip install --no-cache-dir notebook==5.7.10
RUN python3.8 -m pip install --no-cache-dir jupyter_contrib_nbextensions
RUN python3.8 -m pip install --no-cache-dir jupyter_nbextensions_configurator
RUN python3.8 -m pip install --no-cache-dir jupyter_highlight_selected_word
RUN jupyter contrib nbextension install --system
RUN jupyter nbextensions_configurator enable --system
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension install --py jupyter_highlight_selected_word
RUN jupyter nbextension enable highlight_selected_word/main

EXPOSE 8888
