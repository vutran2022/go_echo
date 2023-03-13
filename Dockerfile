FROM rust:1.67-slim

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN cargo build

ENV PORT 80
EXPOSE 80

CMD ["cargo", "run", "-q"]
