#!/bin/sh -e

install -Dm644 cc.csv /usr/local/share/countrycodes.csv
install -Dm644 website-visitor-stats.service /etc/systemd/system/website-visitor-stats.service
install -Dm755 visitor-stats /usr/local/bin/visitor-stats

systemctl enable website-visitor-stats.service
systemctl start website-visitor-stats.service
