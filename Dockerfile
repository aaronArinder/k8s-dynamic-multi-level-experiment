FROM golang:1.16-alpine AS build
WORKDIR /src/
COPY main.go /src/
RUN go build -o /bin/simple-server ./src/

# empty container image
FROM scratch
COPY --from=build /bin/simple-server /bin/simple-server

ENTRYPOINT ["/bin/simple-server"]

