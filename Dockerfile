FROM golang:1.20

WORKDIR /app

ENV GOPROXY=https://goproxy.cn

RUN go mod download

RUN go build -o main

CMD ["./main"]
