#!/bin/bash


LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
	echo "Usage : ./nginx-log-analyzer.sh <log-file>"
	exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
	echo "Error: $LOG_FILE not found."
	exit 1
fi


echo "Top IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort  | uniq -c | sort -nr | head -5

echo "\nTop 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

echo "\nTop 5 response status code:"
awk '{print $9}' "$LOF_FILE" | sort | uniq -c | sort -nr | head -5
