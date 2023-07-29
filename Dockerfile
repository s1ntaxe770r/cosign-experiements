# Use a minimal base image
FROM alpine:latest


# Update the package manager
RUN apk update && apk upgrade

# Install cowsay package using the package manager (apk)
RUN apk add --no-cache cowsay

# Set the default command to run cowsay and exit
CMD ["cowsay", "Hello, Docker!"]
