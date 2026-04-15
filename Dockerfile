FROM node:18

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    gcc \
    libjpeg-dev \
    libfreetype6-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install Pillow requests --break-system-packages

RUN npm install -g n8n

USER node

EXPOSE 5678

CMD ["n8n", "start"]
