FROM golang:1.21-alpine

WORKDIR /app

COPY . .

RUN go mod init example.com/goapp
RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
