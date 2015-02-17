#!/bin/bash
# grab arguments
ip_arg="$1"
cidr_arg="$2"

# convert to decimal
IFS=. read -r a b c d <<< "${ip_arg}"
ip="$(((a * 256 ** 3) + (b * 256 ** 2) + (c * 256) + d))"
printf "%12d ip as decimal\n" ${ip}

IFS='./' read -r a b c d prefix <<< "${cidr_arg}"
network="$(((a * 256 ** 3) + (b * 256 ** 2) + (c * 256) + d))"
printf "%12d network as decimal\n" ${network}

# calculate mask
# bash always uses int64, but i need uint32, so drop the upper half
mask="$(((0xffffffff << (32 - ${prefix})) & 0x00000000ffffffff))"
printf "%12d mask\n" ${mask}

if [[ $((network & mask)) -eq $((ip & mask)) ]]; then
	echo "in network!"
fi
