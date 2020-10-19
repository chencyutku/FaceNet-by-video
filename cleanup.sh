#!/bin/bash

BASEDIR=$(dirname "$0")

find $BASEDIR/Users/csv/indiv/*.csv -not -name "Unknown.csv" -delete
find $BASEDIR/Users/people_ali/* -type d -not -name "Unknown" | xargs rm -rf
find $BASEDIR/Users/people_ori/* -type d -not -name "Unknown" | xargs rm -rf
find $BASEDIR/Users/people_vectors/* -type d -not -name "Unknown" | xargs rm -rf
find $BASEDIR/Users/Videos/*.avi -delete

Users_csv_content="id,Name\n1,Unknown\n"

echo -e $Users_csv_content > $BASEDIR/Users/csv/Users.csv
