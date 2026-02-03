# Fix clock on dual-booted systems
Set linux to write local time instead of the default UTC, to avoid messing up windows when dual booting.
https://askubuntu.com/questions/800914/clock-shows-wrong-time-after-switching-from-ubuntu-to-windows-10

```
timedatectl set-local-rtc 1
```

