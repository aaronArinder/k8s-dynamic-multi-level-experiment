#!/bin/bash

# TODO: p95

FAIL=0
number_of_requests=4
number_of_fake_clients=2
target="10.106.25.213"
pidlist=""

start_time_in_ms=`gdate +%s%N | cut -b1-13`

i=0
while [ $i -lt $number_of_fake_clients ]
do
curl -s $target > /dev/null
    i=$(( $i + 1 ))
    pidlist="$pidlist $!"
done

for job in $pidlist
do
    wait $job || let "FAIL+=1"
done

if [ "$FAIL" == "0" ]; then
    end_time_in_ms=`gdate +%s%N | cut -b1-13`
    let total_requests=$number_of_requests*$number_of_fake_clients
    let difference=($end_time_in_ms-$start_time_in_ms)/$total_requests
    let total_asks=total_requests*20

    echo "total requests: $total_requests"
    echo "average ms of requests: $difference"
else
    echo "FAIL! ($FAIL)"
fi

