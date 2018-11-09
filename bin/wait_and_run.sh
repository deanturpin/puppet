#!/bin/bash

while :;
	do inotifywait -qe modify kali.pp
	clear
	puppet apply kali.pp
done
