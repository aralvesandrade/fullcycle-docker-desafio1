FROM golang:1.21-alpine AS build

WORKDIR /app
COPY . .
RUN go build -o main .

FROM scratch
WORKDIR /app
COPY --from=build /app /app

CMD [ "/app/main" ]