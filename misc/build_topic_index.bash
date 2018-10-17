#!/bin/bash

(
	echo "# Topics of Discussion"
	echo ""
	echo "Many of these topics have been taken from blog articles or e-mails used during training."
	echo ""

	export COUNT=0
	ls | fgrep -v 'README.md' | sort -n | while read FILENAME; do
		DESC=$(echo $FILENAME | sed -e 's/_/ /g' -e 's/^[0-9 ]*//')
		COUNT=$(($COUNT + 1))
		echo "$COUNT. [$DESC](./$FILENAME)"
	done
) > README.md
