#!/bin/bash
# Install script for the cron jobs in this directory.

TIME=`date +%s`
OLD=/tmp/cron-old.$TIME
ADD=~/src/dotfiles/cron/jobs.cron
NEW=/tmp/cron-new.$TIME

echo "backup created: $OLD"
crontab -l > $OLD

cat $OLD $ADD | sort | uniq > $NEW

echo $'\nNew crontab:'
cat $NEW
crontab $NEW

