FROM alpine:3.21
ENV PYTHONUNBUFFERED=1
WORKDIR /app
RUN apk add --update-cache python3 py3-pip weasyprint rust cargo make \
   fontconfig ttf-freefont font-noto terminus-font
ARG CARGO_TARGET_DIR=/app
RUN cargo install --locked presenterm
CMD ["/app/presenterm", "IA.md", "--export-pdf"]
