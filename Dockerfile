FROM hexpm/elixir:1.14.5-erlang-25.3.2.4-alpine-3.18.2 AS builder
RUN apk add --no-cache --update bash git openssl
ENV MIX_ENV=prod
COPY config ./config
COPY lib ./lib
COPY priv ./priv
COPY mix.exs .
COPY mix.lock .
RUN mix local.rebar --force \
    && mix local.hex --force \
    && mix deps.get \
    && mix release

FROM alpine:3.18.2
RUN apk add --no-cache openssl openssl ncurses-libs libstdc++
WORKDIR /app
COPY --from=builder _build/prod/rel/sleeky_website/ .
CMD ["/app/bin/sleeky_website", "start"]
