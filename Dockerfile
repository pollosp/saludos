FROM golang:1.13.5-buster AS builder
WORKDIR /go/src/github.com/pollosp/api/
RUN useradd -u 10001 scratchuser
COPY api/main.go .
RUN CGO_ENABLED=0 go build

FROM scratch
WORKDIR /app/
COPY --from=builder /go/src/github.com/pollosp/api/api .
COPY saludos.json .
COPY --from=builder /etc/passwd /etc/passwd
USER scratchuser
ENTRYPOINT ["./api", "saludos.json"]
