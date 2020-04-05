FROM jupyter/scipy-notebook:latest

USER root

RUN jupyter labextension install jupyterlab-plotly

# # install vscode repository and key
# RUN apt-get update && apt-get install -y --no-install-recommends curl gpg
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg \
# && sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/ \
# && sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# # install vscode
# RUN apt-get install -y --no-install-recommends apt-transport-https \
# && apt-get update \
# && apt-get install -y --no-install-recommends code

RUN conda install --quiet --yes \
    'plotly'

USER $NB_UID

# There is no env variable to switch of the token, have use start.sh
ENTRYPOINT ["start.sh", "jupyter", "lab", "--LabApp.token=''"]
