FROM jupyter/datascience-notebook

# ADD MATLAB KERNEL
RUN pip install matlab_kernel

# ADD NODE JS KERNEL 
RUN npm install -g ijavascript && ijsinstall


# ADD C KERNEL
USER root
RUN pip install jupyter-c-kernel && install_c_kernel

# ADD P5 Jupyterlab Extension
#RUN pip install ipyp5 && jupyter labextension install jupyter-p5

RUN pip install datalab-on-jupyter && jupyter serverextension enable datalab_on_jupyter


# Prepare shared Folder for notebook user joyvan
USER jovyan
RUN mkdir /home/jovyan/shared
USER root
RUN chown jovyan:users /home/jovyan/shared
USER jovyan