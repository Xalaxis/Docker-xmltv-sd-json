FROM ubuntu:latest

ARG DEBIAN_FRONTEND="noninteractive"
ARG TZ=Europe/London

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install git perl xmltv make cron -y

RUN cpan install IPC::Run3
RUN cpan install Time::Duration::Parse

WORKDIR /opt/app

RUN git clone https://github.com/azlm8t/tv_grab_az_sdjson_sqlite.git

#CMD [ "/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite" ]

COPY cron /etc/cron.d/update-schedules

RUN chmod 0644 /etc/cron.d/update-schedules

CMD [ "cron", "-f" ]