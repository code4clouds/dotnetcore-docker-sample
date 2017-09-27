FROM microsoft/dotnet:2.0-runtime
COPY bin/Release/netcoreapp2.0/ubuntu.16.04-x64/publish /src
WORKDIR /src
CMD [ "./standalone_demo" ]