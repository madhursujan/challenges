#!bin/bash

key=$1 #give input json filename ex: input.json

fetchValue () {
   query=`cat $1 | sed -e 's/\//./g' -e 's/^/./'`
   echo $query
   jq '$query' $1
}

fetchValue $key