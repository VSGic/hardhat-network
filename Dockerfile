FROM debian:bookworm-slim

ARG NODE_VERSION="22"

ENV NODE_VERSION=${NODE_VERSION}

WORKDIR /app

COPY ./app ./

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    && rm -rf /var/lib/apt/list/*

RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -

RUN apt-get update && apt-get install -y \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN npm install

EXPOSE 8545

CMD ["npx", "hardhat", "node"]
