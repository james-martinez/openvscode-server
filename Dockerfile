# created by GrimZZZ-404 & Milo123459 & aleksrutins
ARG PORT TOKEN
FROM gitpod/openvscode-server:latest
USER root
RUN apt update && apt upgrade -y && apt install -y openssl procps curl file git bash
USER openvscode-server
ENV OPENVSCODE_SERVER_ROOT=${OPENVSCODE_SERVER_ROOT}
ENV TOKEN=${TOKEN}
ENV PORT=${PORT}
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
