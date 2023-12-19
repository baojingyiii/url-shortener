FROM golang:1.20 
WORKDIR /app
COPY . .
RUN GOPROXY=goproxy.cn go mod download
RUN go build -o main
CMD ["./main"]
