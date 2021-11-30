FROM alpine:latest

# Install the things we need
RUN apk add --update --no-cache curl jq bash

# Copy the entrypoint script and tips file
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY tips.json /tips.json

ENTRYPOINT ["/entrypoint.sh"]
