if ! test -f ~/z/z.sh; then
	echo "[+] Installing z search...":
	git clone https://github.com/rupa/z.git
	mv z ~
	echo ". ~/z/z.sh" >> ~/.bashrc
	source ~/.bashrc
else
	echo "[!] z search is already installed"
fi
if ! test -f $NVM_DIR/nvm.sh; then
	echo "[+] Installing node...":
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
	nvm install --lts
else
	echo "[!] node is already installed"
fi

if ! test -f ~/.vimrc; then
	echo "[+] Installing .vimrc"
	cp .vimrc ~/.vimrc
else
	echo "[!] .vimrc is already installed"
fi

if ! test -f ~/.vim/autoload/plug.vim; then
	echo "[+] Installing plug..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "[!] plug is already installed"
fi

if ! command -v pip; then
	echo "[+] Installing pip..."
	sudo apt install python3-pip
	echo "[+] Installing black using pip..."
	sudo apt install black
else
	echo "[!] pip is already installed"
fi

if ! command -v rg; then
	echo "[+] Installing ripgrep..."
	curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
	sudo dpkg -i ripgrep_13.0.0_amd64.deb
else
	echo "[!] ripgrep is already installed"
fi

if ! command -v gopls; then
	echo "[+] Installing gopls..."
  go get golang.org/x/tools/gopls@latest
else
	echo "[!] gopls is already installed"
fi




