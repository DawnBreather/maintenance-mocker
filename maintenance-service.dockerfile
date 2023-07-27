FROM --platform=linux/arm64v8 mcr.microsoft.com/dotnet/runtime:6.0.20-bookworm-slim-arm64v8

WORKDIR /app

ENV ASPNETCORE_URLS=http://*:80

# copy content of "publish" folder to /app
COPY . .

EXPOSE 80

CMD ["/bin/sh", "-c", "/app/Cohero.MaintenanceAPI"]