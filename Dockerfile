FROM evoapicloud/evolution-api:v2.3.7

# The base image already contains the "node" user with UID/GID 1000.
# blitz.cloud runs containers as UID/GID 1000, so use that existing user.

USER root

# Give UID/GID 1000 ownership of Evolution's working directory.
RUN chown -R 1000:1000 /evolution

ENV PORT=8080
ENV SERVER_PORT=8080

EXPOSE 8080

VOLUME ["/evolution/instances"]

USER 1000:1000
