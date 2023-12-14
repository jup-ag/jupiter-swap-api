FROM --platform=linux/amd64 debian:bullseye-slim

RUN apt-get update && apt-get install unzip openssl ca-certificates libssl1.1 -y
COPY ./jupiter-swap-api-x86_64-unknown-linux-gnu.zip ./jupiter-swap-api-x86_64-unknown-linux-gnu.zip
RUN unzip jupiter-swap-api-x86_64-unknown-linux-gnu.zip
RUN rm jupiter-swap-api-x86_64-unknown-linux-gnu.zip
RUN chmod +x jupiter-swap-api

ENV RUST_LOG=info

CMD ["./jupiter-swap-api"]