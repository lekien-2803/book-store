# Sử dụng base image Golang từ Docker Hub
FROM golang:alpine

# Thiết lập /app làm thư mục làm việc
WORKDIR /app

# Copy tất cả file trong thư mục hiện tại vào /app trong container
COPY . .

# Build ứng dụng Golang
RUN go build -o myapp .

# Chạy ứng dụng khi container khởi động
CMD ["./myapp"]
