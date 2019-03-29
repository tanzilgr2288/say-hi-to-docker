# Getting latest Linux Image with Golang inside
FROM golang:1.9-alpine

# Running command
RUN mkdir -p $$GOPATH/bin

# copy all the file
COPY . /go/src/DDDDDDD

# Setting ENV
ENV name Kevin

# SET Workdir
WORKDIR /go/src/DDDDDDD

# Set the default command that want to execute after images was running
ENTRYPOINT [ "go", "run" ]

# Set the argument can be overide
CMD ["hello.go"]

# --label "maintaner=Tom Cruise <kevin@alterra.id>"

