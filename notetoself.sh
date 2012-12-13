#!/bin/sh
#
#
#
#
#

RCPT=pontus@freyhult.net
SUBJECT='[Note-to-self]'

#
# NO user serviceable parts below
#

type zenity >/dev/null || exit 1

what=`zenity  --entry --text='Note to send:' --width='900'`
when=`date --rfc-3339=seconds`

printf 'From: NoteToSelf <%s>\nTo: %s\nSubject: %s %s\n\n%s\n\n.\n' "$RCPT" "$RCPT" "$SUBJECT" "$when" "$what"  | sendmail "$RCPT"

