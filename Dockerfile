FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip python3-dev gcc musl-dev zlib-dev jpeg-dev freetype-dev

RUN pip3 install Pillow requests --break-system-packages

USER node
