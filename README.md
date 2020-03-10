# DeepFaceLab CentOS Linux 

**Note**: This installation method works for CentOS 7.x - your milage may vary.

This is a simple addition to [DeepFaceLab](https://github.com/iperov/DeepFaceLab) to allow the latest code to be run directly on Linux. 

# Install requirements
Download the [NVIDIA cuDNN RPM](https://developer.nvidia.com/cudnn). **note:** You need to register and make sure you download the *specific* version `libcudnn7-7.6.5.32-1.cuda10.0`

## Manual method
Install the rest of the requirements as your favourite user (`root` is used by default and as example):
```bash
yum -y install epel-release http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
wget -O /etc/yum.repos.d/cuda.repo https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo
yum -y update
yum -y install python3-3.6.8 git cuda-toolkit-10-0.x86_64 ffmpeg ffmpeg-devel libSM libXext libXrender-devel libXrender gcc gcc-c++ 
yum -y install kernel-devel make cuda-libraries-10-0.x86_64 nvidia-driver-cuda.x86_64 nvidia-driver-cuda-libs.x86_64 

cd ~ && git clone https://github.com/iperov/DeepFaceLab.git
cd ~ && git clone https://github.com/elemantalcode/dfl.git

cd ~/DeepFaceLab && cp -advpR ../dfl/scripts .
cd ~/DeepFaceLab && python3.6 -m pip install -r requirements-cuda.txt
yum -y install /root/libcudnn7-7.6.5.32-1.cuda10.0.x86_64.rpm
```

## Scripted method
Run the `setup.bash` script
```bash
sudo setup.bash
```

# Post-install check
Once installed, you should be able to run DeepFaceLab as per usual:
```bash
cd ~/DeepFaceLab/scripts
./1_clear_workspace.sh
```

# Quick FAQ

**Q:** Why CentOS?

**A:** It's stable, close to RHEL and doesn't suffer the same fate as [CoreOS](https://coreos.com/os/eol/) ... yet.
##

**Q:** Why not docker?

**A:** Why abstract _yet again_ when you don't have to?
##

**Q:** Why not use Anaconda3 like [DeepFaceLab for Linux](https://github.com/lbfs/DeepFaceLab_Linux)

**A:** Different approaches to solve the same challange. I personally don't like adding frameworks/structures that I don't intend on making good use of. For python developers, Anaconda makes sense - for me, I just want to run DeepFaceLab under Linux with minimal hassle.
##

**Q:** Anything else particular noteworthy?

**A:** You need _some_ Linux knowledge. 
##

