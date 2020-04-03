FROM continuumio/miniconda
RUN conda create -n env python=3.6

COPY -r requirements.txt

WORKDIR /usr/src/app
RUN conda install -r requirements.txt

COPY . .

EXPOSE  5000

CMD [ "python", "./main.py" ]
