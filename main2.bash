mkdir web_monitor_log
cd web_monitor_log
touch Web_log.csv  #Final output
touch WebLog.csv

wget https://raw.githubusercontent.com/Yingzzzzz/76/main/directory.bash
chmod +x directory.bash
 ./directory.bash & PID=$!
  sleep 2 
 kill $PID
 
#duplicate
awk -F '|' '!x[$1]++' WebLog.csv > Web_Log.csv
#output
sed -i 's/\s\+/,/g' Web_Log.csv
awk -F '|' '!x[$1]++' Web_Log.csv


