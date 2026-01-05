FROM alpine:latest

RUN apk add --no-cache bash

COPY src/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
