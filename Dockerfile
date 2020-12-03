FROM alpine:3.12

RUN addgroup -g 65333 postgresql-client && \
  adduser \
    -u 65333 \
    -G postgresql-client \
    -h /postgresql-client \
    -D \
    postgresql-client && \
  apk add --no-cache postgresql-client

WORKDIR /postgresql-client

USER postgresql-client

ENTRYPOINT ["psql"]
