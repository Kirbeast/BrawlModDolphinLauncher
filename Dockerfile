# Build:
# docker build -o . .

# Use an official image
FROM devkitpro/devkitppc:20250527 AS build-stage

# Copy current folder into container, then compile
COPY . /projectroot/
RUN cd /projectroot && make -j$(nproc)

# Copy the built DOL files out of the container
FROM scratch AS export-stage
COPY --from=build-stage ["/projectroot/Netplay Launcher.dol", "/"]
COPY --from=build-stage ["/projectroot/Offline Launcher.dol", "/"]
