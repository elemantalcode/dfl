#!/usr/bin/env bash

grep CentOS /etc/redhat-release 2>&1 > /dev/null
[ $? -ne 0 ] && echo "Not CentOS. Exiting." && exit 1

yum -y install epel-release http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
wget -O /etc/yum.repos.d/cuda.repo https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo
yum -y update
yum -y install python3-3.6.8 git cuda-toolkit-10-0.x86_64 ffmpeg ffmpeg-devel libSM libXext libXrender-devel libXrender gcc gcc-c++
yum -y install kernel-devel make cuda-libraries-10-0.x86_64 nvidia-driver-cuda.x86_64 nvidia-driver-cuda-libs.x86_64

cd ~ && git clone https://github.com/iperov/DeepFaceLab.git
cd ~ && git clone https://github.com/elemantalcode/dfl.git

cd ~/DeepFaceLab && cp -advpR ../dfl/scripts .
cd ~/DeepFaceLab && python3.6 -m pip install -r requirements-cuda.txt

if [ -f "/root/libcudnn7-7.6.5.32-1.cuda10.0.x86_64.rpm" ] ; then
  yum -y install /root/libcudnn7-7.6.5.32-1.cuda10.0.x86_64.rpm
else
  echo "Please download libcuDNN from https://developer.nvidia.com/cudnn and try again"
fi
