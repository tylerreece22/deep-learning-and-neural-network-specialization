ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Tyler Reece <tyler_reece@outlook.com>"

# Install Tensorflow
RUN pip install --quiet \
    'tensorflow==2.1.0' && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
