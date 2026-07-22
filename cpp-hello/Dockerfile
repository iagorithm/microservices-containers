FROM alpine:3.22 AS builder
RUN apk add --no-cache g++
WORKDIR /app
COPY main.cpp .
RUN g++ -O2 -static -o hello main.cpp

FROM scratch
COPY --from=builder /app/hello /hello
ENTRYPOINT ["/hello"]
