# my_ubuntu_setup

- Ubuntu 14.04(日本語Remix)

## apt-getで入るソフトウェアとか設定とか

[my_ubuntu_setup](./ubuntu_application/README.md)

## OpenCVのインストール

[opencv_install](./OpenCV_install/README.md)

## ROSのインストール

http://wiki.ros.org/indigo/Installation/Ubuntu

## PCLのインストール

http://pointclouds.org/downloads/linux.html (2015.3.16)

```
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-all
```

## TeXのインストール

[tex_install](./tex_install/README.md)

## Golangのインストール
[ここ](https://golang.org/doc/install)から環境に合ったものをダウンロードしてくる。`usr/local`に展開して終わり

```bash
tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz
```

サードパーティ製のGoアプリとかいれるディレクトリのパスやGoのパスを通す。

```bash
mkdir -p ~/gopkg
```

`~/.zshrc`と`~/.bashrc`にパスを通す

```bash
## For go lang
export GOROOT=/usr/local/go/
export GOPATH=$HOME/gopkg
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```

## その他の設定

- `Alt`キーでコマンドを入力を出さないようにする

Ubuntu Tweak -> Tweaks -> Unity -> HUD をオフにする。

- `firefox develop edition`のインストール

```
sudo apt-get install gnome-panel
```

Download firefox develop edition

```
sudo cp -r /from_where_it_is /opt/firefox_dev
gnome-desktop-item-edit ~/.local/share/applications --create-new
```

