# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:6.0

COPY entrypoint.sh /entrypoint.sh
RUN dotnet tool install -g dotnet-stryker
