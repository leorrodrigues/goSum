FROM golang:1.13 AS builder

WORKDIR /go/src/app
COPY . /go/src/app

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/app

#Create the final container
FROM scratch

COPY --from=builder /go/bin/app/sum /go/bin/app

ENTRYPOINT [ "/go/bin/app" ]