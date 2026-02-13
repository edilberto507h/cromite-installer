#!/bin/bash
mkdir -p ~/Descargas/cromite/work
cd ~/Descargas/cromite/work
echo "Download Files"
wget -c https://github.com/uazo/cromite/releases/latest/download/chrome-lin64.tar.gz
wget -c https://raw.githubusercontent.com/edilberto507h/cromite-installer/main/files/cromite.tar.gz

if [ -f ~/Descargas/cromite/work/chrome-lin64.tar.gz ]; then

echo "Unpack Files"
tar -xf chrome-lin64.tar.gz

echo "Install files"
sudo cp -r ~/Descargas/cromite/work/chrome-lin/* /usr/bin/cromite/

    if [ ! -f ~/.local/share/applications/cromite.desktop ]; then
        echo "Install Link"
        tar -xf cromite.tar.gz
        cp ~Descargas/cromite/work/cromite.desktop ~/.local/share/applications/

    else
        echo "Cromite Update Done"
    fi

else
echo "ERROR: Package missming"
fi

echo "Remove files"
rm -r ~/Descargas/cromite
