FROM continuumio/miniconda3
MAINTAINER Michael Sarahan <msarahan@anaconda.com>

RUN apt-get update && apt-get install -y jq
RUN conda install -yq --only-deps anaconda-client pathlib
RUN pip install -e git://github.com/fpliger/anaconda-client@conda_repo_cli_1#egg=anaconda-client --no-deps

COPY ./assets/* /opt/resource/
