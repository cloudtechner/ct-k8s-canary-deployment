FROM python:3.7.2-slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get -qqy update && apt-get install -qqy \
        curl \
        python-dev \
        python-setuptools \
        git

COPY . /usr/src/app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3", "src/app.py"]
