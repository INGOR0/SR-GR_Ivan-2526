$TTL 604800
workstation.dployerz.com.	IN	SOA	pc11 admin.dployerz.com. (
				 1  ; version
			     86400  ; refresh
			     86400  ; retry
			   2419200  ; expire
			    604800) ; neg TTL

; NAMESERVERS
	IN	NS	pc11.dployerz.com.
	IN	NS	pc12.dployerz.com.


; MAIL SERVER

	IN	MX	10	pc14.dployerz.com.

; A RECORDS

pc1             IN A 172.17.5.101
cliente1	IN CNAME pc1

pc2             IN A 172.17.5.102
pc3             IN A 172.17.5.103
pc4             IN A 172.17.5.104
pc5             IN A 172.17.5.105
pc6             IN A 172.17.5.106
pc7             IN A 172.17.5.107
pc8             IN A 172.17.5.108
pc9             IN A 172.17.5.109
