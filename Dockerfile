FROM node:18-alpine

USER root

RUN apk add --no-cache python3 py3-pip py3-pillow

RUN npm install -g n8n

USER node

EXPOSE 5678

CMD ["n8n", "start"]
