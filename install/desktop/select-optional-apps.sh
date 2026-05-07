#!/bin/bash

if [[ -v VICJOUB_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$VICJOUB_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$VICJOUB_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
