#!/bin/bash
ufw allow from 192.168.2.0/24 to any port 8200 proto tcp
ufw allow from 192.168.2.0/24 to any port 1900 proto udp
