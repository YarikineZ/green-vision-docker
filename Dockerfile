FROM continuumio/miniconda
RUN conda install python=3.6

WORKDIR /usr/src/app
COPY . .
RUN conda install --file requirements.txt

EXPOSE  5000

CMD [ "python", "./main.py" ]