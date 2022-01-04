FROM lawiet/gdrive:latest

RUN apt update && apt install -y --no-install-recommends wget
RUN wget --no-check-certificate https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_linux_arm64.tar.gz && tar -xvf gdrive_2.1.1_linux_arm64.tar.gz && chmod +x gdrive && mv gdrive /usr/local/bin/gdrive
RUN rm -rf /var/lib/apt/lists/*

