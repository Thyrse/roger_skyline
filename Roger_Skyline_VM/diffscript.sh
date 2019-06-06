#!/bin/bash
cksum /etc/crontab > /etc/scripts/crontab_verify.log
if (diff "/etc/scripts/crontab.log" "/etc/scripts/crontab_verify.log")
then
	exit
else
	echo "The crontab file has changed." | mail -s "Automatic mail from cron" root
fi
