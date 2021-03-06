# インストールするOpenCVのバージョン
OPENCV_VERSION="2.4.10"
# 最初は前提ソフトウェアのインストール
sudo apt-get -yV install build-essential

sudo apt-get -yV install opencl-headers
#
sudo apt-get -yV install libjpeg-dev
sudo apt-get -yV install libopenjpeg-dev
sudo apt-get -yV install jasper
sudo apt-get -yV install libjasper-dev libjasper-runtime
sudo apt-get -yV install libpng12-dev
sudo apt-get -yV install libpng++-dev libpng3
sudo apt-get -yV install libpnglite-dev libpngwriter0-dev libpngwriter0c2
sudo apt-get -yV install libtiff-dev libtiff-tools pngtools
sudo apt-get -yV install zlib1g-dev zlib1g-dbg
sudo apt-get -yV install v4l2ucp
#
sudo apt-get -yV install python
sudo apt-get -yV install autoconf
sudo apt-get -yV install libtbb2 libtbb-dev
sudo apt-get -yV install libeigen2-dev
sudo apt-get -yV install cmake
sudo apt-get -yV install openexr
sudo apt-get -yV install gstreamer-plugins-*
sudo apt-get -yV install freeglut3-dev
sudo apt-get -yV install libglui-dev
sudo apt-get -yV install libavc1394-dev libdc1394-22-dev libdc1394-utils
sudo apt-get -yV install libgtk2.0-dev
sudo apt-get -yV install pkg-config
# ビデオ関係のパッケージ
sudo apt-get -yV install libxine-dev
sudo apt-get -yV install libxvidcore-dev
sudo apt-get -yV install libva-dev
sudo apt-get -yV install libssl-dev
sudo apt-get -yV install libv4l-dev
sudo apt-get -yV install libvo-aacenc-dev
sudo apt-get -yV install libvo-amrwbenc-dev
sudo apt-get -yV install libvorbis-dev
sudo apt-get -yV install libvpx-dev

cd ~/Downloads
wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/${OPENCV_VERSION}/opencv-${OPENCV_VERSION}.zip
unzip opencv-${OPENCV_VERSION}.zip
cd opencv-${OPENCV_VERSION}

cmake -DBUILD_DOCS=ON -DBUILD_EXAMPLES=ON -DCMAKE_BUILD_TYPE=RELEASE -DWITH_TBB=ON -DINSTALL_C_EXAMPLES=ON -DWITH_OPENCL=OFF -DWITH_CUDA=OFF -DWITH_OPENNI=ON -DWITH_UNICAP=ON -DWITH_V4L=ON -DWITH_XINE=ON -DWITH_OPENEXR=ON -DBUILD_OPENEXR=ON .

make -j4
sudo make install
sudo ldconfig
