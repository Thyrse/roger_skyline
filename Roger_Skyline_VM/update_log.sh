#!/bin/bash
apt update >> /var/log/update_script.log && apt full-upgrade >> /var/log/update_script.log 2>&1
