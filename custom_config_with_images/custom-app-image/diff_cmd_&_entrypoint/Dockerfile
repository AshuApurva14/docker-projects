FROM nginx:latest

# RUN  groupadd --gid 1000 node \
#    && useradd --uid 1000 --gid nginx --shell /bin/bash --create-home nginx

WORKDIR /app

COPY . .

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]