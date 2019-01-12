## MAKEFILE for infra management Xt6
##
## 20190112 carlos@xt6.us

dnsupdate: DNSLOG.md
	./mk --tags dns
	touch dnsupdate
