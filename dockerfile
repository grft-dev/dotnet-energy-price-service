FROM pladynski/myrepo:graftcode
COPY ./bin/Release/net8.0/publish/ /usr/app/
CMD ["/usr/app/gg", "--runtime", "netcore", "--modules", "/usr/app/EnergyPriceService.dll", "--GV"]
