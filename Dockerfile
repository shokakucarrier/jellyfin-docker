FROM jellyfin/jellyfin:latest
RUN apt-get update \
 && apt-get install --no-install-recommends --no-install-suggests -y ffmpeg

ENTRYPOINT ["./jellyfin/jellyfin", \
    "--datadir", "/config", \
    "--cachedir", "/cache", \
    "--ffmpeg", "/usr/bin/ffmpeg"]
