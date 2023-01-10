#!bin/bash

key=$1 #give input json filename ex: input.json
filename=$2

fetchValue () {
   query=`echo $1 | sed -e 's/\//./g' -e 's/^/./'`
   echo $query
   jq '$query' $2
}

fetchValue $key $filename