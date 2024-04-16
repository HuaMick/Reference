FROM python:3.11

WORKDIR /

ARG ENV_1
ARG ENV_2

ENV ENV_1=${ENV_1}
ENV ENV_2=${ENV_2}

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY ./ /

#Variable expansion is not available unless you explicitly invoke a shell
ENTRYPOINT ["echo"]
ARG ["hello world"]
