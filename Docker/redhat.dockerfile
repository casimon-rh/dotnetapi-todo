FROM registry.redhat.io/rhel8/dotnet-60:6.0-8
COPY .. .
RUN dotnet build /property:GenerateFullPaths=true /consoleloggerparameters:NoSummary
ENV ASPNETCORE_ENVIRONMENT Development
EXPOSE 8080
CMD ["dotnet", "bin/Debug/net6.0/TodoApi.dll"] 