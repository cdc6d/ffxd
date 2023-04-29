# Thanks to
# https://medium.com/codex/running-gui-applications-in-docker-firefox-nautilus-file-manager-5424694104ec
#
# Build:
#     docker build -t ffxd .
#
# First run:
#     xhost +
#     docker run -it --name ffxd -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --net=host ffxd:latest
#
# Subsequent runs:
#     xhost +
#     docker start ffxd

FROM fedora:latest

RUN yum install -y firefox

CMD /usr/bin/firefox
