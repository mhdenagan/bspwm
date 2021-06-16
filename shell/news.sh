#!/bin/sh

cat /tmp/newsupdate 2>/dev/null || echo "$(newsboat -x print-unread | awk '{ if($1>0) print "📰" $1}')$(cat "${XDG_CONFIG_HOME:-$HOME/.config}"/newsboat/.update 2>/dev/null)"
