FROM alpine:3.10

RUN apk update && \
    apk add --no-cache curl jq
#installing curl to make the rest calls, jq library for parsing json and getting URLs


COPY entrypoint.sh /entrypoint.sh
#entry point shell script which contains the entire logic of making calls
#to the giphy api, filtering response, making a call to rest API
#and posting the comment

RUN chmod +x /entrypoint.sh

#excutes the shell script when the container starts up

ENTRYPOINT ["/entrypoint.sh"]