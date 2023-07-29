# Use a minimal base image
FROM alpine:latest


# Update the package manager
RUN apk update && apk upgrade

RUN apk add cowsay --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN apk add cowsay 

# Set the default command to run cowsay and exit
CMD ["cowsay", "Hello, Docker!"]
