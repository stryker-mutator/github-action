# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /

COPY entrypoint.sh /entrypoint.sh
RUN dotnet tool install -g dotnet-stryker

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
