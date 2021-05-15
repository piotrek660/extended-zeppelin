FROM apache/zeppelin:0.9.0
COPY requirements.txt /tmp/requirements.txt

USER root

RUN  pip install --upgrade pip \
     && pip install -r /tmp/requirements.txt

EXPOSE 8080

ADD start.sh /
ENTRYPOINT ["/start.sh"]
