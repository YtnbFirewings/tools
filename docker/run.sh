#!/bin/sh

cthostname="owntracks.example.org"

# also add $cthostname to HOSTLIST

docker run -v /tmp/o2:/owntracks -p 11883:1883 -p 18883:8883 -p 8083:8083 \
	--hostname "${cthostname}" \
	-e MQTTHOSTNAME="my.box.example.com" \
	-e IPLIST="192.168.1.1 127.0.0.83 192.168.1.82" \
	-e HOSTLIST="foo.example.com bar.org.example.com" \
	owntracks/backend:v01