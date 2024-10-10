FROM python:3.12

RUN pip install snmpsim snmpsim-data
RUN setup-snmpsim-data /data

EXPOSE 161/udp
CMD [ "snmpsim-command-responder", "--data-dir=/data/network/router",  "--agent-udpv4-endpoint=0.0.0.0:161", "--process-user=nobody", "--process-group=nogroup" ]