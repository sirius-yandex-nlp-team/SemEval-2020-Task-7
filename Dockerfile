FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

ARG PYTHON_VERSION=3.6
ARG CONDA_VERSION=3
ARG CONDA_PY_VERSION=4.5.11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y — no-install-recommends python3-pip python3-dev wget \
    bzip2 libopenblas-dev pbzip2 libgl1-mesa-glx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /opt/conda/bin:$PATH
RUN wget — quiet https://repo.anaconda.com/miniconda/Miniconda$ CONDA_VERSION-$ CONDA_PY_VERSION-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \

RUN conda --version

COPY ./src /workdir/src
COPY ./code /workdir/code
COPY ./configurations /workdir/configurations
COPY ./scripts /workdir/scripts
COPY ./environment.yml /workdir

WORKDIR /workdir

RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "humor", "/bin/bash", "-c"]

RUN python -m spacy download en

ENV HUGGINGFACE_TRANSFORMERS_CACHE=/workdir/huggingface_cache

WORKDIR /workdir/src

CMD ["conda", "run", "--no-capture-output", "-n", "humor", "bash", "../configurations/$CONFNAME.sh"]
