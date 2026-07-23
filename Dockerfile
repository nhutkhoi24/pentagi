FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
    bash zsh tmux curl wget git nano vim less tree unzip zip \
    ca-certificates \
    python3 python3-pip python3-venv \
    jq dnsutils whois net-tools iproute2 iputils-ping traceroute \
    nmap \
    nikto whatweb wafw00f \
    sqlmap dirsearch \
    gobuster ffuf feroxbuster \
    exploitdb \
    seclists \
    netcat-traditional socat openssl \
    && apt clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /work /outputs /wordlists && \
    ln -s /usr/share/seclists /wordlists/seclists || true

WORKDIR /work

CMD ["/bin/bash"]
