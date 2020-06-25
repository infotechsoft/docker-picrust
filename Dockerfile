FROM conda/miniconda2-centos7

ARG BUILD_DATE
ENV PICRUST_VERSION=1.1.4

LABEL name="infotechsoft/picrust" \ 
	vendor="INFOTECH Soft, Inc." \
	version="${PICRUST_VERSION}" \
	build-date="${BUILD_DATE}"\
	maintainer="Thomas J. Taylor <thomas@infotechsoft.com>"

RUN pip --default-timeout=180 install --upgrade pip && \
    pip --default-timeout=180 install h5py && \
    conda config --set remote_read_timeout_secs 300 && \
    conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda update -y conda && \
    conda install -y -c bioconda picrust=${PICRUST_VERSION} && \
    download_picrust_files.py

VOLUME /data/
WORKDIR /data/