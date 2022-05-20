# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential autoconf texinfo genext2fs libtool libhidapi-dev python3 wget
ENV PATH=$PATH:/app/toolchains/i386-pc-phoenix/i386-pc-phoenix/bin/
ENV PATH=$PATH:/app/toolchains/arm-phoenix/arm-phoenix/bin/
ENV PATH=$PATH:/app/toolchains/riscv64-phoenix/riscv64-phoenix/bin/
#for armv7a9-zynq7000 special case
RUN apt-get install -y xxd
WORKDIR .
CMD ["gcc", "--version"]
EXPOSE 3000