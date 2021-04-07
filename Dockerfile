FROM conda/miniconda3

COPY ./code /workdir/code
COPY ./configurations /workdir/configurations
COPY ./scripts /workdir/scripts
COPY ./environment.yml /workdir

WORKDIR /workdir

RUN conda env create -f environment.yml
RUN conda activate humor

RUN python -m spacy download en

ENV HUGGINGFACE_TRANSFORMERS_CACHE=/workdir/huggingface_cache

WORKDIR /workdir/src

CMD bash "../configurations/$CONFNAME.sh"
