# Base Stage
FROM ubuntu:latest AS base
RUN apt-get update && apt-get install -y cron
RUN useradd -ms /bin/bash abc
RUN mkdir -p /target && chown abc:abc /target

# Intermediate Stage
FROM base AS intermediate
COPY script.sh /home/abc/script.sh
RUN chmod +x /home/abc/script.sh
RUN echo "*/5 * * * * abc /home/abc/script.sh 1" > /etc/cron.d/mycron
RUN crontab /etc/cron.d/mycron
RUN service cron start  # Ensures cron runs

# Cleanup Stage
FROM intermediate AS cleanup
USER abc
CMD ["/home/abc/script.sh", "0"]

# Create Stage
FROM intermediate AS create
USER abc
CMD ["/home/abc/script.sh", "1"]

