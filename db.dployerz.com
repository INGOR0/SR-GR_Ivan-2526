$TTL  604800
dployerz.com.  IN   SOA  pc11 admin.dployerz.com. (
                1    ; First version of the file
            86400    ; Refresh time
            86400    ; Retry time
          2419200    ; Expire time
           604800)   ; Negative Cache TTL

;Name servers
@       IN     NS   pc11.dployerz.com.
        IN     NS   pc12.dployerz.com.

; Mail servers
	IN	MX	10	pc14.dployerz.com.

; ## A records ##

; DHCP + Router
pc10		IN A 172.17.5.10
		IN A 172.17.4.10
enrutador	IN CNAME pc10

; DNS A RECORDS
pc11		IN A 172.17.5.11
servidordns1	IN CNAME pc11

pc12		IN A 172.17.5.12
servidordns2	IN CNAME pc12

; Printer
pc13		IN A 172.17.5.13
servidorimpresion IN CNAME pc13

; Debian3-Pruebas
pc14		IN A 172.17.4.114
servidorweb	IN CNAME pc14
servidorcorreo	IN CNAME pc14

pc15		IN A 172.17.4.15
