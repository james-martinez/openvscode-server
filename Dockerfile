# created by GrimZZZ-404 & Milo123459 & aleksrutins
ARG PORT TOKEN
FROM gitpod/openvscode-server:latest
USER root
RUN apt update && apt install -y openssl build-essential procps curl file git bash
USER openvscode-server
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/workspace/.profile
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
RUN /home/linuxbrew/.linuxbrew/bin/brew install curl
ENV OPENVSCODE_SERVER_ROOT=${OPENVSCODE_SERVER_ROOT}
ENV TOKEN=${TOKEN}
ENV PORT=${PORT}
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
