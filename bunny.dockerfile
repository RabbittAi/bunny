FROM debian:12

# setting up os env
USER root
WORKDIR /home/nonroot/bunny
RUN groupadd -r nonroot && useradd -r -g nonroot -d /home/nonroot/bunny -s /bin/bash nonroot

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# setting up python3
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential software-properties-common curl sudo wget git
RUN apt-get install -y python3 python3-pip
RUN curl -fsSL https://astral.sh/uv/install.sh | sudo -E bash -
RUN $HOME/.cargo/bin/uv venv
ENV PATH="/home/nonroot/bunny/.venv/bin:$HOME/.cargo/bin:$PATH"

# copy bunny python engine only
RUN $HOME/.cargo/bin/uv venv
COPY requirements.txt /home/nonroot/bunny/
RUN UV_HTTP_TIMEOUT=100000 $HOME/.cargo/bin/uv pip install -r requirements.txt 
RUN playwright install-deps chromium

COPY src /home/nonroot/bunny/src
COPY config.toml /home/nonroot/bunny/
COPY bunny.py /home/nonroot/bunny/
RUN chown -R nonroot:nonroot /home/nonroot/bunny

USER nonroot
WORKDIR /home/nonroot/bunny
ENV PATH="/home/nonroot/bunny/.venv/bin:$HOME/.cargo/bin:$PATH"
RUN mkdir /home/nonroot/bunny/db
RUN playwright install chromium

ENTRYPOINT [ "python3", "-m", "bunny" ]
