FROM mcr.microsoft.com/dotnet/aspnet:9.0
 
# Install wget and download GG
RUN mkdir -p /usr/app && apt-get update && apt-get install -y wget && wget -O /usr/app/gg.deb https://github.com/grft-dev/graftcode-gateway/releases/download/v1.1.0/gg_linux_amd64.deb && dpkg -i /usr/app/gg.deb && rm /usr/app/gg.deb && apt-get clean && rm -rf /var/lib/apt/lists/*
 
# You just need to copy your binaries with public interfaces
COPY /bin/Release/net8.0/publish/ /usr/app/

EXPOSE 80
EXPOSE 81
# And run Graftcode Gateway passing name of modules that should be exposed
CMD ["gg", "--runtime", "netcore", "--modules", "/usr/app/EnergyPriceService.dll", "--endpoint", "https://d.grft.dev"]
