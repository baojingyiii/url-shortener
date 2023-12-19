FROM golang:1.20 as builder
WORKDIR /app
COPY . .
RUN GOPROXY=goproxy.cn go mod download
RUN go build -o main
FROM alpine
WORKDIR /app
COPY --from=builder /app/main /app/main
CMD ["./main"]
