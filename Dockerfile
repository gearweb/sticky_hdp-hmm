FROM jupyter/scipy-notebook:latest

USER root

# ssh keys are mapped with docker-compose
RUN apt-get update && apt-get install -y --no-install-recommends keychain

RUN jupyter labextension install jupyterlab-plotly

RUN conda install --quiet --yes \
    'plotly'

USER $NB_UID

# There is no env variable to switch of the token, have use start.sh
ENTRYPOINT ["start.sh", "jupyter", "lab", "--LabApp.token=''"]
