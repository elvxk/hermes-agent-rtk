FROM nousresearch/hermes-agent:latest

USER root

ENV RTK_INSTALL_DIR=/usr/local/bin
ENV RTK_BIN=/usr/local/bin/rtk

RUN curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh \
    && /usr/local/bin/rtk --version

ENV PATH="/usr/local/bin:${PATH}"
