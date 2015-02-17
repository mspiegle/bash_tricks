# bash tricks!

subnet membership
```
$ ./in_cidr.sh 10.0.0.100 10.0.0.0/24
   167772260 ip as decimal
   167772160 network as decimal
  4294967040 mask
in network!

$ ./in_cidr.sh 10.0.0.100 10.0.0.0/25
   167772260 ip as decimal
   167772160 network as decimal
  4294967168 mask
in network!

$ ./in_cidr.sh 10.0.0.100 10.0.0.0/26
   167772260 ip as decimal
   167772160 network as decimal
  4294967232 mask

$ ./in_cidr.sh 10.0.0.100 10.0.0.0/27
   167772260 ip as decimal
   167772160 network as decimal
  4294967264 mask
```
