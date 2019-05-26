FROM python:3-alpine3.9

# For Travis build
ARG BUILD_DATE
ARG VCS_REF
ARG VER

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/pawelpiwosz/docker-weather"
LABEL org.label-schema.name="docker-weather"
LABEL org.label-schema.description="Check weather"
LABEL org.label-schema.version=$VER


RUN pip install --upgrade pip && pip install yamllint

RUN mkdir /bucket

WORKDIR /bucket

ENTRYPOINT ["yamllint"]
