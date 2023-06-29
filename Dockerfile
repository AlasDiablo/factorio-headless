FROM ubuntu:22.04 as build
WORKDIR /app
ARG FACTORIO_VERSION
RUN apt update
RUN apt upgrade -y
RUN apt install -y wget
RUN apt install -y xz-utils
RUN wget https://www.factorio.com/get-download/${FACTORIO_VERSION}/headless/linux64
RUN tar -Jxvf linux64

FROM ubuntu:22.04 as server
COPY --from=build /app/factorio /factorio
CMD ["/factorio/bin/x64/factorio", "--start-server"]