FROM kaznishi/python-node:python3.6-node8.11

ARG DGID=1000
ARG DUID=1000
ARG USERNAME=appuser

RUN addgroup -g ${DGID} ${USERNAME} \
    && adduser -D -u ${DUID} -G ${USERNAME} ${USERNAME}

RUN mkdir /app

WORKDIR /app
USER appuser