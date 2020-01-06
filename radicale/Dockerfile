FROM python:3.8-buster

WORKDIR /radicale
COPY config /radicale
RUN mkdir collections

RUN python3 -m pip install --upgrade radicale
ENTRYPOINT ["/usr/local/bin/python3", "-m", "radicale"]
CMD ["--config", "/radicale/config", "--logging-debug"]
