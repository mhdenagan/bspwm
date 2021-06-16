#!/bin/sh

unread="$(find ~/.local/share/mail/dimitrije.r@live.com/INBOX/new/ -type f | wc -l 2>/dev/null)"

pidof mbsync >/dev/null 2>&1 && icon="sync"

if [ "$unread" -eq 0 ]; then
        echo ''
else
        echo " $unread"
fi

#
