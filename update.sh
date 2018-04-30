#!binbash
echo 欢迎使用一键搭建
echo 即将搭建的是4.30版本
echo 准备开始安装
read -p 回车后开始安装
echo 请输入你的内网ip 
read -p 内网ip：  ip
cp rootPUBG_XiNian_02restart.sh rootrestart.sh
chmod +x restart.sh
wget --no-check-certificate -O shadowsocks-all.sh httpsraw.githubusercontent.comteddysunshadowsocks_installmastershadowsocks-all.sh
chmod +x shadowsocks-all.sh
.shadowsocks-all.sh 2&1  tee shadowsocks-all.log


echo ss搭建成，请记住连接信息
read -p 记住了吗？任意键继续 

curl httpsraw.githubusercontent.comcreationixnvmv0.13.1install.sh  bash
source ~.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0
yum -y install gcc-c++
yum -y install flex
yum -y install bison
wget httpwww.tcpdump.orgreleaselibpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
.configure
make
make install

git clone httpsgithub.com1264527381PUBG_XiNian_02.git
cd PUBG_XiNian_02
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip  pino

echo 搭建完成
