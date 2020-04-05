# ThinkOrSwim Image

This repository provides a way to run TD Ameritrade's ThinkOrSwim in a Docker container.

## Requirements

- Docker
- X Server

## Build

This script builds your image.

```bash
./build.sh
```

## Run

This script brings up a container, allowing you to login to the application.

```bash
./run.sh
```

If you get an error related to DISPLAY, you may have to run:

```bash
xhost +local:$(id -un)
```
