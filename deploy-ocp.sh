#!/bin/bash
#? prerrequisito: oc login, oc (new) project 
oc import-image registry.redhat.io/rhel8/dotnet-60:6.0-8 --confirm
cat Docker/redhat.dockerfile | \
oc new-build --strategy docker --name dotnet-demo \
--docker-image registry.redhat.io/rhel8/dotnet-60:6.0-8 https://github.com/casimon-rh/dotnetapi-todo -D -
oc new-app -i dotnet-demo:latest
#* optional
oc expose dotnet-demo