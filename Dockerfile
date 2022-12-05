FROM ghcr.io/dellelce/mkit-base as build

RUN ./mkit.sh profile=gnubuild /app/gnubuild

FROM alpine:3.8 as target

COPY --from=build /app/gnubuild /app/gnubuild
