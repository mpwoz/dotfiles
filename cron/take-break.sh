# To set this up, run:
#     crontab -e
# then add this line to run every 20 minutes:
#     */20 * * * * ~/src/dotfiles/cron/take-break.sh

export DISPLAY=:0
/usr/bin/notify-send "Take a break!"
