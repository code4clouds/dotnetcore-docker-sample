FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
RUN mkdir /build
COPY . /build
WORKDIR /build
RUN dotnet publish -c Release -r ubuntu.22.04-x64

FROM ubuntu:22.04
RUN apt-get update && apt-get install -y libunwind8 icu-devtools
COPY --from=build /build/bin/Release/netcoreapp2.1/ubuntu.22.04-x64/publish /src
WORKDIR /src
ENTRYPOINT [ "./standalone_demo" ]