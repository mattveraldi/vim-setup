echo "[+] Installing node...":
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts
echo "[+] Installing .vimrc"
cp .vimrc ~/.vimrc
echo "[+] Installing plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "[+] Installing pip..."
sudo apt install python3-pip
echo "[+] Installing black..."
sudo apt install black

