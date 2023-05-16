#sudo apt install libssl-dev
#wget https://github.com/IntelRealSense/librealsense/archive/refs/tags/v2.48.0.zip
#unzip v2.48.0.zip
#cd librealsense-2.48.0
#mkdir build && cd build
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
#export PATH=$PATH:$CUDA_HOME/bin
#cmake ../ -DFORCE_RSUSB_BACKEND=ON -DBUILD_PYTHON_BINDINGS:bool=true -DPYTHON_EXECUTABLE=/usr/bin/python3
#make -j4
#sudo make install
#echo "export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/pyrealsense2" >> ~/.bashrc
#sudo cp config/99-realsense-libusb.rules /etc/udev/rules.d/
#sudo udevadm control --reload-rules && udevadm trigger

git clone https://github.com/JetsonHacksNano/installLibrealsense
cd installLibrealsense/scripts
./installDependencies.sh
cd ..
./installLibrealsense.sh
./buildLibrealsense.sh
echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc
echo "export PYTHONPATH=$PYTHONPATH:/usr/local/lib" >> ~/.bashrc
echo "export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/pyrealsense2" >> ~/.bashrc

source ~/.bashrc

