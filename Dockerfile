FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y easy-rsa
RUN make-cadir /ca && \
    unlink /ca/clean-all
ADD clean-all /ca/clean-all
RUN chmod u+x /ca/clean-all
WORKDIR /ca
ADD cmd.sh /root/cmd.sh
RUN chmod u+x /root/cmd.sh
CMD /root/cmd.sh

