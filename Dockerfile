FROM ubuntu

LABEL maintainer="ZoiosNET<management@zoios.net>"

RUN echo "Prepare"
RUN apt-get update
RUN apt-get install -y wget apt-transport-https software-properties-common git

RUN echo "Install PowerShell"
RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN add-apt-repository universe
RUN apt-get install -y powershell

RUN echo "Install dotnet"
RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0 dotnet-runtime-5.0
