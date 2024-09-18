# common programs
sudo apt update -y
sudo apt upgrade -y
sudo apt remove w3m -y
sudo apt install git -y
sudo apt install gh -y
sudo apt install stow -y

#install nvim
mkdir temp
cd temp
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

#install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk

copy scripts to hd
cp -r ./scripts/ ~/
