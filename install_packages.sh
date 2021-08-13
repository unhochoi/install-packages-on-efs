#!/bin/bash

# python3.8 설치를 위한 CentOS 패키지 설치
sudo yum -y groupinstall "Development Tools"
sudo yum -y install openssl-devel bzip2-devel libffi-devel

# python3.8 파일을 직접 다운로드, 압축 해제 및 설치
wget https://www.python.org/ftp/python/3.8.3/Python-3.8.3.tgz
tar xvf Python-3.8.3.tgz
cd Python-3.8*/
./configure --enable-optimizations
sudo make altinstall

# 패키지(numpy, etc, ..) 설치를 위한 CentOS 패키지 설치
sudo yum -y install gcc-c++
sudo yum -y install python3-devel

# 패키지 설치 (--target 옵션을 이용하여 특정 위치에 패키지 설치)
mkdir /home/ec2-user/mountpoint/efs/packages
pip3.8 install --upgrade --target /home/ec2-user/mountpoint/efs/packages/ numpy
pip3.8 install --upgrade --target /home/ec2-user/mountpoint/efs/packages/ tensorflow
# pip3.8 install --upgrade --target /home/ec2-user/mountpoint/efs/packages/ sklearn
# pip3.8 install --upgrade --target /home/ec2-user/mountpoint/efs/packages/ xgboost
# pip3.8 install --upgrade --target /home/ec2-user/mountpoint/efs/packages/ tflite
