# Quantum hello world
A tiny project for exploring quantum computing.
## Install dependencies (tested on Ubuntu 20.04)
```sh
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; \
  sudo dpkg -i packages-microsoft-prod.deb; \
  sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get install -y dotnet-sdk-3.1 && \
  sudo apt-get install -y aspnetcore-runtime-3.1
```
## Run
```sh
dotnet run
```
