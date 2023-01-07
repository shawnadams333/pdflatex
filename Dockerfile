# Dockerfile for creating a pdflatex container image
FROM ubuntu

# add universe repository to the image
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository universe

# install TexLive and related packages
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
