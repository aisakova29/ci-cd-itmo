FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip

RUN pip3 install flask

COPY js_example /opt/js_example

ENTRYPOINT FLASK_APP=/opt/js_example flask run --host=0.0.0.0 --port=5000
