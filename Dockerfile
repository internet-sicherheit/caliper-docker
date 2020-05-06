
FROM node:10.16-alpine

# require to set these explicitly to avoid mistakes
ARG caliper_version=0.3.0

# Install packages for dependency compilation
RUN apk add --no-cache python g++ make git py-pip python3-dev libffi-dev openssl-dev && pip3 install docker-compose

WORKDIR /hyperledger/caliper/workspace

RUN npm install -g --only=prod @hyperledger/caliper-core@${caliper_version} @hyperledger/caliper-cli@${caliper_version}

ENV CALIPER_WORKSPACE /hyperledger/caliper/workspace
ENV CALIPER_BIND_ARGS -g

ENTRYPOINT ["caliper"]
CMD ["--version"]
