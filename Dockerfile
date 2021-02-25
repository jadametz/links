FROM nginx:mainline-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY links.conf /links.conf
