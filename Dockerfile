FROM debian:stable
RUN apt-get update && apt-get -y upgrade && apt-get -y install \
    sudo \
    && apt-get clean

COPY min_setup.sh /root/setup.sh
COPY nvim_install.sh /root/nvim_install.sh

WORKDIR /root
RUN /bin/bash setup.sh
RUN rm /root/setup.sh
RUN rm /root/nvim_install.sh
RUN chsh -s ~/.zshrc
RUN git config --global --add safe.directory *
ENV SHELL=/bin/zsh
CMD /bin/zsh 
