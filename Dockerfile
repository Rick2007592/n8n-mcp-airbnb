FROM n8nio/n8n:1.91.2

USER root

RUN mkdir -p /home/node/.npm-global \
  && npm config set prefix '/home/node/.npm-global'

ENV PATH=/home/node/.npm-global/bin:$PATH

RUN npm install -g @openbnb/mcp-server-airbnb

USER node
