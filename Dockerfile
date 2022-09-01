FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install unzip nginx wget -y
RUN apt install supervisor -y
COPY scriptplusconf /scriptplusconf
COPY qBconf.tar.gz /qBconf.tar.gz
COPY startQBnox /usr/bin/startQBnox
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /usr/bin/startQBnox
RUN chmod +x /scriptplusconf/entrypoint2.sh
RUN chmod +x /scriptplusconf/entrypoint1.sh
CMD /usr/bin/startQBnox
# /scriptplusconf/entrypoint2.sh
