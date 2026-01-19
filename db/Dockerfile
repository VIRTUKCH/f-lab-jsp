FROM gvenzl/oracle-free:23.4-slim

ENV ORACLE_DATA=/data
USER root
RUN mkdir -p /data && chown -R oracle:oinstall /data
USER oracle

VOLUME ["/data"]
