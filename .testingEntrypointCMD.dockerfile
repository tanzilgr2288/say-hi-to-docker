# Get Last Image last image from docker registry
FROM alpine:latest

# Set the default command that want to execute after images was running
ENTRYPOINT ["/bin/echo", "Hello, "]

# Set the argument can be overide
CMD ["world"]