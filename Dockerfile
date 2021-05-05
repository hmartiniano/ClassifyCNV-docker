#FROM continuumio/anaconda3
FROM python:3.8-slim
MAINTAINER "Hugo Martiniano <hugomartiniano@gmail.com>"

RUN apt-get update && apt-get upgrade -y && apt install bedtools -y && \
    rm -rf /var/lib/apt/lists/*

#RUN /opt/conda/bin/conda update -n base -c defaults conda && \
#    /opt/conda/bin/conda install python=3.7 && \
#    /opt/conda/bin/conda install bedtools -y 
#RUN python -m pip install bedtools
 
ADD https://github.com/Genotek/ClassifyCNV/archive/refs/tags/v1.1.0.tar.gz . 
RUN tar xf v1.1.0.tar.gz && mv /srv/ClassifyCNV-1.1.0/* . && rm -rf /srv/ClassifyCNV-1.1.0

CMD ["/bin/bash"]
