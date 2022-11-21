FROM rocker/r-ver:4.2.2

ENV S6_VERSION=v2.1.0.2
ENV RSTUDIO_VERSION=daily
ENV DEFAULT_USER=rstudio
ENV PANDOC_VERSION=default
ENV PATH=/usr/lib/rstudio-server/bin:$PATH

RUN apt-get update
RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh

COPY ./scripts /scripts
RUN /scripts/install_misc_r_packages.sh


EXPOSE 8787

CMD ["/init"]
