FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

ARG TKN_CLI_RELEASE=0.17.2

USER root

RUN curl -o /tmp/tkn.rpm -L https://github.com/tektoncd/cli/releases/download/v${TKN_CLI_RELEASE}/tektoncd-cli-${TKN_CLI_RELEASE}_Linux-64bit.rpm && \
    rpm -i /tmp/tkn.rpm  && \
    rm /tmp/tkn.rpm

# RUN rpm -i /tmp/tkn.rpm

USER 1001