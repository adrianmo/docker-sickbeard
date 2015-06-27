# docker-sickbeard

[Docker image](https://registry.hub.docker.com/u/adrianmo/sickbeard/) for running SickBeard.

## Usage

You can run the image with the following command.

    docker run -d -p 8081:8081 -v /path/to/config:/config -v /path/to/downloads:/data/downloads -v /path/to/nzb:/data/nzb -v /path/to/torrents:/data/torrents --restart=always --name sickbeard adrianmo/sickbeard

Note the `--restart=always` parameter, that will restart the Docker container every time it stops. We need that because SickBeard will update itself periodically and restart the process, causing the Docker container to stop.


## Build

You can **optionally** build the image `adrianmo/sickbeard`. To do so just execute the following command once you have checked out the [source repository](https://github.com/adrianmo/docker-sickbeard).

    docker build -t adrianmo/sickbeard .
