FROM golang:1.16 AS build
WORKDIR /src/
COPY main.go go.* /src/
RUN go build -o /bin/simple-server

ENTRYPOINT ["/bin/simple-server"]
