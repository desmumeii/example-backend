FROM golang:1.16

WORKDIR /usr/src/app
COPY . . 

EXPOSE 8080

RUN go build

ENV REQUEST_ORIGIN=http://localhost:5001

CMD ["./server"]

ENV PORT=8080
