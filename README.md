# backUpLogs
automated tool to compress all logs and save every 24 hours
<p>webhook section of code from https://github.com/ChaoticWeg/discord.sh</p>


STEP1

download zip to server and unzip 

STEP2

edit backup.sh to add webhook url where the logs will be saved and log file locations 

STEP3
give backup.sh perms to run 

<b>sudo chmod backup.sh</b>

add cront tab to make it run on a schedule 

<b>sudo crontab -e -u root</b>

0 0 * * * bash /ADD FULL FILE LOCATION HERE/backUpLogs/backup.sh

this will run 1x a day at 12am more info on timer settings can be viewed inside 
sudo crontab





