#!/bin/bash

INFLUXHOST=
INFLUXDB=

P=/root/temp.log
rm $P

digitemp_DS9097U -a -l $P

while IFS= read -r sensor
do

id=`echo $sensor | awk -F";" '{print $4}'`
temp=`echo $sensor | awk -F";" '{print $5}'`
curl -s -XPOST 'http://$INFLUXHOST/write?db=$INFLUXDB' --data-binary "$id value=$temp"

done < $P
