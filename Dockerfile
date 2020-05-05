FROM hyperledger/caliper:0.3.0
USER root

RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && pip3 install docker-compose
RUN touch /var/run/docker.sock
RUN addgroup docker
RUN addgroup node docker
RUN chown root:docker /var/run/docker.sock

USER node:node
