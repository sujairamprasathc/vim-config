all: init-config color-config

init-config: ~/.vim/
	install -m644 main.vimrc ~/.vimrc
	install -m644 mouse.vimrc ~/.vim/mouse.vimrc
	install -m644 general.vimrc ~/.vim/general.vimrc
	install -m644 autocomplete.vimrc ~/.vim/autocomplete.vimrc
	install -m644 color_config.vimrc ~/.vim/color_config.vimrc
	install -m644 global_key_mapping.vimrc ~/.vim/global_key_mapping.vimrc

color-config: ~/.vim/
	cp -r ./colors/ ~/.vim/colors/

~/.vim/:
	mkdir ~/.vim/

clean:
	rm -f ~/.vimrc
	rm -f ~/.vim/mouse.vimrc
	rm -f ~/.vim/general.vimrc
	rm -f ~/.vim/autocomplete.vimrc
	rm -f ~/.vim/color_config.vimrc
	rm -f ~/.vim/global_key_mapping.vimrc
	rm -rf ~/.vim/colors/
	rm -fd ~/.vim
