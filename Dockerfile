FROM linuxbrew/brew:2.7.4

RUN brew install zsh

COPY ./config/docker/script.sh /tmp
RUN chmod 755 /tmp/script.sh
RUN zsh -c /tmp/script.sh
