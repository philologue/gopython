FROM golang:1.26.1

FROM ghcr.io/astral-sh/uv:python3.13-trixie
COPY --from=0 /usr/local/go /usr/local/go
ENV PATH="/usr/local/go/bin:${PATH}"

RUN uv tool install ruff
RUN uv tool install flake8
