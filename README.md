# backUpLogs
automated tool to compress all logs and save every 24 hours

<p>webhook section of code from https://github.com/ChaoticWeg/discord.sh</p>

<p>
<h3>STEP1</h3>

download zip to server and unzip 
</p>
  
<p>
<h3>STEP2</h3>

edit backup.sh to add webhook url where the logs will be saved and log file locations <br>
`nano backup.sh`
</p>

<p> 
<h3>STEP3</h3>
give backup.sh perms to run 

`$.sudo chmod backup.sh`

</p>

<p>
<h3>STEP4</h3>

add cront tab to make it run on a schedule 

`sudo crontab -e -u root`

<i>it may ask you to select and editor pick what one you know the most i use nano 

add this line with updated location of backup.sh</i>

`0 0 * * * bash /ADD FULL FILE LOCATION HERE/backUpLogs/backup.sh`
</p>


this will run 1x a day at 12am more info on timer settings can be viewed inside 
sudo crontab





