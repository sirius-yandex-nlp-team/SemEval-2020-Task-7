FROM continuumio/miniconda3

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
