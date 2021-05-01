FROM golang:1.16.2

WORKDIR /app

COPY ./main .

RUN go env -w GO111MODULE=auto
RUN go build -o math

CMD ["./math"]