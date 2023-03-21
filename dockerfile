FROM ubuntu

RUN  apt-get update -y && \
     apt-get install -y python3-pip && \
     apt-get install -y python3-venv

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./app/

ENTRYPOINT ["python3"]

CMD ["app.py"]
    
