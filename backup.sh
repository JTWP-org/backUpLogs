#!/bin/bash

# What to backup.
backup_files="/home/steam/pavlovserver/Pavlov/Saved/Logs"

# this will only backup logs for pavlovserver if you have more than one u can add more inside the quotes backup_files="/home/steam/pavlovserver/Pavlov/Saved/Logs /home/steam/pavlovserver0/Pavlov/Saved/Logs /home/steam/pavlovserver1/Pavlov/Saved/Logs"

# Where to backup to.
dest="/home/steam/back-logs"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-1-$day.tgz"

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

#webhook you must enter your webhook url here in the place where WEBHOOKURL is 

discord.sh \
  --webhook-url="WEBHOOKURL" \
  --username "NotificationBot" \
  --avatar "https://i.imgur.com/12jyR5Q.png" \
  --text "Logs Logged !"
