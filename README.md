# LOTL_scanner
A bash scanner leveraging /dev/tcp (available by default in any UNIX/Linux systems) to scan a list of IP addresses.

LOTL_scanner is a very rudimentary scanner, based on the LOTL (living off the land) concept, that is about leveraging native functionalities in the target system 
without requiring any additional tools.

In fact, LOTL_scanner will scan a lis of target systems by using /dev/tcp and /bin/sh, already included in *nix.

LOTL_scanner was developed from a script included in the Penetration Testing with Kali Linux (PWK) PDF, originally designed for use with a single IP.

The script reads a list of IP addresses from a file and loops through them, attempting to perform a connection
to all 65,536 ports for each IP address, and returns a message when a port is open.

Possible improvements: multithreading to improve speed.
