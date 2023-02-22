#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ]
then
	echo Arguments were not specified.
	exit 1
fi

if ! [ -d $filesdir ]
then
	echo not directory
	exit 1
fi

FILES_CNT=$( ls $filesdir | wc -l )
CONTENT_MATCHS=$( grep -r $searchstr $filesdir | wc -l )

echo The number of files are $FILES_CNT and the number of matching lines are $CONTENT_MATCHS
