#!/bin/bash
yum remove -y httpd
userdel -r medz
userdel -r tahir
userdel -r halam
groupdel admin
rm -rf /var/www/html/test*
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin no/PermitRootLogin yes/' /etc/ssh//sshd_config
sed -i '/^%admin ALL=(ALL) NOPASSWD: ALL/d' /etc/sudoers
rm -f /etc/sudoers.d/halam
systemctl restart sshd
