#!/bin/sh

url="https://www.reddit.com/message/unread/.json?feed=f6375b603ca0c473bde6333bb632e20c6a09e7d5&user=JackofAllSuedes"
unread=$(curl -sf "$url" | jq '.["data"]["children"] | length')

case "$unread" in
    ''|*[!0-9]*)
	unread=0
esac;

if [ "$unread" -gt 0 ]; then
   echo "%{F#FF5700} $unread%{F-}"
else
   echo " 0"
fi
