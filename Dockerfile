FROM hyperledger/caliper:0.2.0
RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && pip3 install docker-compose