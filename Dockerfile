FROM apache/zeppelin:0.9.0
COPY requirements.txt /tmp/requirements.txt

USER root

RUN  pip install --upgrade pip --trusted-host pypi.org --trusted-host files.pythonhosted.org \
     && pip install -r /tmp/requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org

EXPOSE 8080

ADD start.sh /
ENTRYPOINT ["/start.sh"]
