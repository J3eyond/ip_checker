#!/bin/bash

path=""
reporter_path=""
network=""

echo "[*] Scanning"
echo "-----------------ip-diff--------------------" > $path/diff/diff_ip_checker_$(date +%F).txt

sudo masscan -p80,443,5357,8000-10000 -v $network --rate=10000 \
| grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u > $path/output/ip_checker_$(date +%F).txt

sleep 5
diff $path/output/ip_checker_$(date -d '1 days ago' +%F).txt $path/output/ip_checker_$(date +%F).txt >> $path/diff/diff_ip_checker_$(date +%F).txt

sleep 3
cp $path/diff/diff_ip_checker_$(date +%F).txt $reporter_path/reports/

echo "[*] Sending a report."
python3 $reporter_path/reporter.py
sleep 5

echo "[*] Deleting report."
rm $reporter_path/reports/diff_ip_checker_$(date +%F).txt

echo "Done."
