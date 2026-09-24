FROM evoapicloud/evolution-api:v2.3.5

USER root

RUN chown -R 1000:1000 /evolution

ENV PORT=8080
ENV SERVER_PORT=8080

EXPOSE 8080

VOLUME ["/evolution/instances"]

USER 1000:1000
