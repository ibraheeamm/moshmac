#!/bin/bash
#allow port range for Mosh in a Linux machine using iptables
sudo iptables -I INPUT 1 -p udp --dport 60000:61000 -j ACCEPT
