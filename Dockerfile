FROM golang:1.18

WORKDIR /go/src/invoke
RUN go mod init

COPY invoke.go .
RUN go install -v

COPY . .

CMD ["invoke"]
