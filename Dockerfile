FROM nginx:alpine
COPY . /usr/share/nginx/html/

docker build -t mywebsite .
docker run -d -p 8080:80 mywebsite

CMD ["nginx"]