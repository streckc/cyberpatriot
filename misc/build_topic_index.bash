#!/bin/bash

(
	echo "# Topics of Discussion"
	echo ""
	echo "Many of these topics have been taken from blog articles or e-mails used during training."
	echo ""

	export COUNT=0
	ls *.md | fgrep -v 'README.md' | sort -n | while read FILENAME; do
		DESC=$(grep '^# ' $FILENAME | head -1 | sed -e 's/^# //g')
		COUNT=$(($COUNT + 1))
		echo "$COUNT. [$DESC](./$FILENAME)"
	done
) > README.md
