sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 1.1.1.1" > /etc/resolv.conf'
sudo bash -c 'echo "nameserver 8.8.8.8" >> /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
# define attribute immutable
sudo chattr +i /etc/resolv.conf 