# Caliper Docker-Wormhole Example

This repo demonstrates how to use [Hyperledger Caliper](https://github.com/hyperledger/caliper) from within Docker.
We are using the [Docker-Wormhole-Pattern](https://ro14nd.de/Docker-Wormhole-Pattern) approach to interact with the Docker daemon from within the Caliper container. This means the SUT is setup ad-hoc using docker-compose from within the running Caliper container.

Note that the Fabric certificates in `crypto-config` have been copied from the [Caliper Benchmark Examples](https://github.com/hyperledger/caliper-benchmarks) and they should **never** be used in production environments. Same holds true for the Ethereum key material in `keys`.

# Usage

Just start the provided docker-compose project and you should be good to go:

```bash
$ docker-compose --env fabric.env up
```

Since the npm installation seems to be a bit messy, it is sometimes necessary to remove the old container.

## Without Docker

From the `caliper` directory run:
```bash
npm install 
npx caliper launch master --caliper-bind-sut ethereum:1.2.1 --caliper-workspace . --caliper-benchconfig benchmarks/scenario/config.yaml --caliper-networkconfig networks/ethereum/1node/ethereum.json
```


# License

Since this work is heavly based upon the [Caliper Benchmark Examples](https://github.com/hyperledger/caliper-benchmarks) which are Apache licensed, we decided to license accordingly.

    Copyright 2020 Institute for Internet Security - if(is)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.