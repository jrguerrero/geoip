#!/bin/bash

for i in $(cat /tmp/dnsnames.txt); do echo $i: && sh /tmp/geoip.sh $i; done > /tmp/dnslocation.txt
