#cloud-health-monitor
#How I Built My First Cloud Server Health Monitor 🌐

Hey there! Welcome to my repository. I am Sandhya, an aspiring Cloud & DevOps Trainee Engineer. This project is the result of me learning how to automate basic server health checkups on terminal.

The Problem & My Solution:
When a cloud server runs slow in real production, typing multiple Linux commands manually every single time is painful. So, I wrote a lightweight Bash script (`health_check.sh`). With just **one single click**, it runs in the background and gives a clean diagnostic report of the server.


 What I Did & How It Works

I designed this script to focus on two critical metrics:

1. Storage/Disk Space Check (`df -h | grep`): I used `df -h` to see the space, and used `grep -E` as a filter to target only my main root drives (`/` and `/System/Volumes/Data`) so that it doesn't show useless data.
   
2. Network Connectivity Check (`ping -c 2`): To check if the internet is up, I used the `ping` command. I added the `-c 2` flag so that it sends exactly 2 quick signals to Google and stops automatically instead of running forever.
