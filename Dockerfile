FROM golang:1.16 AS builder

# 为我们的镜像设置必要的环境变量
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

WORKDIR /build
ADD .env .
COPY go.mod .
COPY go.sum .
ADD resources/views .
ADD public .
RUN go mod download
COPY . .
RUN go build -o echo .


FROM scratch
#FROM alpine
#FROM debian:stretch-slim
COPY --from=builder /build/echo /
COPY --from=builder /build/.env /.env
COPY --from=builder /build/resources/views /resources/views
COPY --from=builder /build/public /public
EXPOSE 3000
CMD ["/echo"]