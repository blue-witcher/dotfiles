#!/usr/bin/env bash

function run {
	for arg in "$@"
	do
		$arg > /dev/null 2>&1 &
	done
}
run "$@"
