# Thanks to
# https://medium.com/codex/running-gui-applications-in-docker-firefox-nautilus-file-manager-5424694104ec
#
# Build:
#     docker build -t ffxd .
#
# Allow access to X server:
#     xhost +local:
#
# First run:
#     docker run -it --name ffxd -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --net=host ffxd:latest
#
# Subsequent runs:
#     docker start ffxd

FROM fedora:latest

RUN yum install -y firefox

CMD /usr/bin/firefox
