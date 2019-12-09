FROM ubuntu
RUN apt-get update && apt-get install nginx apt-transport-https wget gnupg -y
RUN wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list
RUN apt-get update && apt-get install dart -y
RUN /usr/lib/dart/bin/pub global activate linkcheck

ENTRYPOINT [ "/entrypoint.sh" ]

