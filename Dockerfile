FROM r-base:3.6.2

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
           python3-keystoneclient python3-swiftclient   \
	&& rm -rf /var/lib/apt/lists/*

RUN Rscript -e "install.packages('apcluster')"
RUN Rscript -e "install.packages('openxlsx')"
RUN Rscript -e "install.packages('cluster')"
