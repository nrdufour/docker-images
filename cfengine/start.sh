#!/bin/sh

#set -x

usage() {
	name=$(basename "$0")
	echo "Usage: $name hub | hubi | client [hub]"
	exit 1
}

case "$1" in
	hub)
		cf-agent -B "$(grep -f /proc/sys/kernel/hostname /etc/hosts | awk '{print $1}')" && tail -f /var/cfengine/promise_summary.log
		;;

	hubi)
		cf-agent -B "$(grep -f /proc/sys/kernel/hostname /etc/hosts | awk '{print $1}')"
		bash
		;;

	client)
		shift
		if [ -z "$1" ]; then
			cf-agent -B hub && tail -f /var/cfengine/promise_summary.log
		else
			cf-agent -B "${1}" && tail -f /var/cfengine/promise_summary.log
		fi
		;;
	*)
		usage
		;;
esac

