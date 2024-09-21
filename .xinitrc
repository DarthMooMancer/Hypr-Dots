#exec i3
slstatus &
#while true;  do  /usr/bin/dwm > /dev/null; done;
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
