from debian:buster

WORKDIR /tmp/nginx/
COPY tools .
RUN chmod +x install.sh && ./install.sh && rm install.sh
CMD ["nginx", "-g", "daemon off;"]
