FROM node:alpine3.12
RUN apk --no-cache add bash \
    curl \
    git \
    npm \
    vim

WORKDIR /home/
RUN git clone https://github.com/shinjihagio/myapp.git
WORKDIR /home/myapp

CMD ["npm", "start"]