FROM golang:1.23-alpine AS build

WORKDIR /docs

RUN apk add -U --no-cache ca-certificates

COPY ./docs/go.mod .
COPY ./docs/go.sum .

RUN go mod download

COPY . /

RUN CGO_ENABLED=0 go build -ldflags="-w -s" -o /main ./cmd/main.go

FROM scratch

WORKDIR /

COPY --from=build /main /
COPY --from=build /docs/swagger/swagger.json /swagger/
COPY --from=build /docs/swagger/swagger.yaml /swagger/

EXPOSE 8080

ENTRYPOINT [ "/main"]
