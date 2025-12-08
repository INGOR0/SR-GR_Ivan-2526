$TTL  604800
$ORIGIN ejemplo.com.
ejemplo.com.  IN   SOA  pc11 admin(
                2    ;Second version
           604800    ;Refresh
            86400    ;Retry
          2419200    ;Expire
           604800)   ;Negative Cache TTL

;Name servers
@       IN     NS   pc11.ejemplo.com.
        IN     NS   pc12.ejemplo.com.

; ## A records ##

; PC1 (cliente1) - PC9 (workstations)
$INCLUDE /var/lib/bind/db.ejemplorrhh.com
$INCLUDE /var/lib/bind/db.ejemploadmin.com

; DHCP + Router
pc10		IN A 172.17.5.10
		IN A 172.17.4.10

router		IN CNAME pc10

; DNS
pc11		IN A 172.17.5.11
dns1		IN CNAME pc11

pc12		IN A 172.17.5.12
dns2		IN CNAME pc12

; Printer
pc13		IN A 172.17.5.13
servidorimpresion IN CNAME pc13

; Web + FTP server and mail server
pc14		IN A 172.17.4.14
www		IN CNAME pc14

pc15		IN A 172.17.4.15
ftp		IN CNAME pc15
