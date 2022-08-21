ARG BASE_IMAGE="codercom/enterprise-base:ubuntu"

FROM ${BASE_IMAGE}

USER root

RUN apt update -y && apt upgrade -y

RUN apt install -y zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN apt install yadm
RUN rm -rf .profile
RUN git config --global init.defaultBranch main
# RUN yadm clone -b main https://github.com/bravo68web/dotfiles

USER coder