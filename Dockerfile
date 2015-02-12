FROM dockerfile/nodejs

RUN npm install hexo -g && hexo init /blog/ && cd /blog/ && npm install

WORKDIR /blog

VOLUME /blog

EXPOSE 4000 

CMD hexo server