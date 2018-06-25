FROM ubuntu:16.04

RUN apt-get update && apt-get -y install cron
ADD crontab /etc/cron.d/crontab
ADD job.sh /root/job.sh
RUN chmod 0644 /etc/cron.d/crontab
RUN touch /var/log/cron.log
RUN mkdir /data

CMD ["cron", "-f"]