#!/bin/bash
docker build -t todoapi-dotnet -f Docker/redhat.dockerfile --compress .
docker run -p 8080:8080 -it todoapi-dotnet