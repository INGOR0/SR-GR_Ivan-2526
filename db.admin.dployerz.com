$TTL 604800
admin.dployerz.com.	IN	SOA	pc12	admin.dployerz.com (
			 1  ; serial
		     86400  ; refresh
		     86400  ; retry
		   2419200  ; expire
		    604800) ; negative cache TTL

; NS
@	IN	NS	pc11.dployerz.com.
	IN	NS	pc12.dployerz.com.

; MX
	IN	MX	10	pc14.dployerz.com.

; A RECORDS

pc0	IN	A	172.17.5.253
admin1	IN	CNAME	pc0

pc100	IN	A	172.17.5.254
admin2	IN	CNAME	pc100

