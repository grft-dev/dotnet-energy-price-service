# Start from the GraftCode Gateway image
FROM pladynski/myrepo:graftcode

# Copy your binaries with public interfaces
COPY ./src/EnergyPriceService/bin/Release/net8.0/publish/ /usr/app/

# Run GraftCode Gateway, pointing at your module
CMD ["/usr/app/gg", "--runtime", "netcore", "--modules", "/usr/app/EnergyPriceService.dll", "--GV"]