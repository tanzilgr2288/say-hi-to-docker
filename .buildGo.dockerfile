# Get image from docker registry
FROM golang:1.9-alpine

# Make folder
RUN mkdir -p $$GOPATH/bin

# Install git
RUN apk add --update tzdata \
    bash wget curl git;

#  Install Dep depency inside container
RUN go get -u github.com/golang/dep/cmd/dep

# directory
COPY . /go/src/DDDDDDD
WORKDIR /go/src/DDDDDDD

# Install depency
RUN dep ensure

ENTRYPOINT [ "go", "run", "main.go" ]