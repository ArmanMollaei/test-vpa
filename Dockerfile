From ubuntu:22.04 
RUN touch /etc/apt/apt.conf.d/99verify-peer.conf && echo >>/etc/apt/apt.conf.d/99verify-peer.conf "Acquire { https::Verify-Peer false }"
RUN apt-get update && apt-get install -y ca-certificates stress-ng
RUN apt-get clean

