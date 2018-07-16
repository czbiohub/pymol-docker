FROM ubuntu:16.04

LABEL \
  author="Olga Botvinnik" \
  description="Open-source Pymol" \
  maintainer="olga.botvinnik@czbiohub.org"

# Install libraries
RUN \
  apt-get update && apt-get install -y --no-install-recommends \
  pymol

# Copy custom Biohub multiqc file to root directory
RUN pymol --version
