#!/bin/bash

BASEDIR="$(cd `dirname $0`; pwd)"

# Checks if the given file contains the given string
contains() {	# $1 = file path, $2 = expression to look for
	egrep --recursive --color=auto --ignore-case -H --line-number "$2" "$1"	# -H: print filename
}

exitCode=0

contains "$1" 'debugger' && exitCode=1

exit $exitCode
