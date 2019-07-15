#!/bin/bash
apt update >> /var/log/update_script.log 2>&1 && apt -y full-upgrade >> /var/log/update_script.log 2>&1
