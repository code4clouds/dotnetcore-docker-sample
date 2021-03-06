FROM microsoft/dotnet:2.1-sdk AS build
RUN mkdir /build
COPY . /build
WORKDIR /build
RUN dotnet publish -c Release -r ubuntu.18.04-x64

FROM ubuntu:18.04
RUN apt-get update && apt-get install -y libunwind8 icu-devtools
COPY --from=build /build/bin/Release/netcoreapp2.1/ubuntu.18.04-x64/publish /src
WORKDIR /src
ENTRYPOINT [ "./standalone_demo" ]