$TTL  604800
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
pc1		IN A 172.17.5.101
pc2		IN A 172.17.5.102
pc3		IN A 172.17.5.103
pc4		IN A 172.17.5.104
pc5		IN A 172.17.5.105
pc6		IN A 172.17.5.106
pc7		IN A 172.17.5.107
pc8		IN A 172.17.5.108
pc9		IN A 172.17.5.109

; DHCP + Router
router		IN A 172.17.5.10
		IN A 172.17.4.10
; DNS
pc11		IN A 172.17.5.11
pc12		IN A 172.17.5.12

; Printer
servidorimpresion IN A 172.17.5.13

; Web + FTP server and mail server
PC14 IN A 172.17.4.14
PC15 IN A 172.17.4.15
