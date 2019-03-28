FROM python:3

RUN mkdir /install
WORKDIR /install

RUN git clone https://github.com/samiraabnar/NeuroSemanticsDemo.git

WORKDIR /install/NeuroSemanticsDemo

COPY ./models/* models/
COPY ./data/* data/


RUN pip install -r requirements.txt
RUN pip install gunicorn

WORKDIR /install/NeuroSemanticsDemo/demo
CMD ["/usr/local/bin/gunicorn", "-e SCRIPT_NAME=/neuro_semantics", "--bind=0.0.0.0", "--timeout=600", "flaskdemo:app"]
