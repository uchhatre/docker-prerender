FROM node:6.9
MAINTAINER uchhatre@gmail.com
EXPOSE 3000
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    git
COPY getready.sh /
RUN /getready.sh
CMD ["node", "/prerender/server.js"]
