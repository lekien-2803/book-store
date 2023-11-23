# Sử dụng base image Golang từ Docker Hub
FROM golang:alpine

# Thiết lập /app làm thư mục làm việc
WORKDIR /app

# Sao chép các tệp go.mod và go.sum và tải các phụ thuộc
COPY go.mod go.sum ./
RUN go mod download

# Sao chép mã nguồn của ứng dụng
COPY . .

# Biên dịch ứng dụng
RUN go build -o myapp

# Khởi chạy ứng dụng khi container bắt đầu
CMD ["./myapp"]