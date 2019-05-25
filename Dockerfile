FROM python:3-alpine3.9

RUN pip install --upgrade pip && pip install yamllint

RUN mkdir /bucket

WORKDIR /bucket

ENTRYPOINT ["yamllint"]
