FROM golang:alpine as builder

WORKDIR /go/src

COPY /src .

RUN go build -o /go/src/CodeEducationRocks

FROM scratch

COPY --from=builder /go/src/CodeEducationRocks /app

CMD [ "/app" ]
