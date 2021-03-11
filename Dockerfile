# https://github.com/theasp/docker-novnc
FROM theasp/novnc

RUN wget https://momentum-client.com/apps/momentum.deb && \
    apt-get update && \
    apt-get install -y ./momentum.deb libasound2 procps libgbm1 && \
    rm -rfv momentum.deb /var/lib/apt/lists/*

ENV RUN_XTERM=no
ENV DISPLAY_WIDTH=1280
ENV DISPLAY_HEIGHT=800

COPY momentum.conf /app/conf.d/
