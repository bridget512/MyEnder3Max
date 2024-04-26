# ---------------------------------------------------------------- #
# Script run on Raspberry Pi startup using crontab
# Description: This bash script is run when the Raspberry Pi first boots. 
#              Any linux commands you would like to run on boot like cameras, sensor logging, other scripts(bash, python, etc), or process starting, can be started from this script. 
#              There IS a security concern here, so consider your use case (generally fine for home/hobby networks). 
#
# ---------------------------------------------------------------- #
# What is Crontab?: Crontab is a job scheduler that can be used to run scripts at fixed times, dates, or intervals.
# Note: This method can be used for additional commands, or linked scripts.
#
#   - Login to the Raspberry Pi using ssh:
#       Powershell: ssh pi@your.ip.addy.here
#
#   - Enter and Run "sudo crontab -e" from any directory
#
#   - Add the following line to the end of the file:
#       @reboot bash /home/pi/klipper_config/RPiStartupScript.bash
#
#   - Save and reboot
#       Press CTRL+X, press y to save, and enter "reboot" in the terminal to reboot the Raspberry Pi
#
# ---------------------------------------------------------------- #

#!/bin/bash
# Start the process for the raspberry pi camera. 
/usr/local/bin/mjpg_streamer -b -i "input_raspicam.so -fps 8 -x 800 -y 600 -sh 80 -sa 2 -quality 90" -o "output_http.so -w /usr/local/share/mjpg-streamer/www -p 8080" -b
