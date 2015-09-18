#!/usr/bin/env bash

# Brew update fails when trying to run it in a LaunchAgent. So I have created
# this script to retry the script 5 times with a linear backoff.

max_attempts=5
backoff=10

attempt=1
until /usr/local/bin/brew update || [ ${attempt} -ge ${max_attempts} ]; do
	sleep $(expr ${attempt} \* ${backoff})
	let attempt+=1
done
