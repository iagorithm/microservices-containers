FROM rust:1.88-alpine AS builder
RUN apk add --no-cache musl-dev
WORKDIR /app
COPY Cargo.toml ./
COPY src ./src
RUN cargo build --release

FROM scratch
COPY --from=builder /app/target/release/hello-rust /hello-rust
ENTRYPOINT ["/hello-rust"]
