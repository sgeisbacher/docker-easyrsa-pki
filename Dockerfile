FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y easy-rsa
RUN make-cadir /ca
WORKDIR /ca
ADD cmd.sh /root/cmd.sh
RUN chmod u+x /root/cmd.sh
CMD /root/cmd.sh

