#!/bin/bash
echo "=== Network Diagnostic Report ==="
echo "Date: $(date)"
echo ""
echo "Network Interfaces:"
ip addr show | grep -E "(inet |UP|DOWN)"
echo ""
echo "Default Gateway:"
ip route | grep default
echo ""
echo "DNS Servers:"
cat /etc/resolv.conf | grep nameserver
echo ""
echo "Internet Connectivity:"
ping -c 2 8.8.8.8 > /dev/null 2>&1 && echo "✓ Internet accessible" || echo "✗ No internet access"
