#!/bin/bash
echo "=== Service Status Check ==="
echo "SSH Service:"
systemctl is-active ssh 2>/dev/null || systemctl is-active sshd 2>/dev/null || echo "SSH service not found"
echo "Network Service:"
systemctl is-active networking 2>/dev/null || systemctl is-active NetworkManager 2>/dev/null || echo "Network service not found"
echo "System Time:"
date
