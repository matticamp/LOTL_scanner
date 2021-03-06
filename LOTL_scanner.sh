#!/bin/bash 

# Enter path to a file containing a list of IP addresses and store it into a variable
echo -n "Enter path to IP list: "
read IP_list

#Creating a variable storing the value of the IP_list variable (the file path)
base=$(echo $IP_list)

# Loop through all ports
for port in {1..65535}; do          

# Loop through all IP addresses stored in the file whose path is stored in the base variable
	for ip in $(cat $base);	do 
	
# For each IP address, connect to all 65,535 ports, discard errors and indicate
# which port is open for which IP

		timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null &&
        echo "port $port is open for $ip"
	done	
done

# Print "done" on screen when scan is completed.
echo "Done"

