FROM python:3.7

VOLUME /app
WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0"]