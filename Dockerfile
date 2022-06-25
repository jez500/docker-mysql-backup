FROM databack/mysql-backup:v0.11.0

# Just add new scripts
COPY scripts.d /scripts.d

USER root
RUN chmod +x /scripts.d/post-backup/*.sh
USER 1005