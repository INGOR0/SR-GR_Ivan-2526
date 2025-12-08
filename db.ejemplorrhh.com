$ORIGIN rrhh.ejemplo.com.

pc1 IN A 172.17.5.101
cliente1 IN CNAME pc1

pc2 IN A 172.17.5.102
