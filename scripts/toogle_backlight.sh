#!/bin/bash

touch /tmp/backlight_state

value=`cat /tmp/backlight_state`

if [ $value -eq 1 ]
then
	xbacklight -set 10
	echo "0" > /tmp/backlight_state
else
	xbacklight -set 100
	echo "1" > /tmp/backlight_state
fi

