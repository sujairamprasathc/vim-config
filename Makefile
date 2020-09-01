all: init-config color-config plugins

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

plugins: create-directories taboo.vim

taboo.vim:
	install -m644 ./external/taboo.vim/plugin/taboo.vim ~/.vim/plugin/taboo.vim
	install -m644 ./external/taboo.vim/doc/taboo.txt ~/.vim/doc/taboo.txt

create-directories:
	mkdir -p ~/.vim
	mkdir -p ~/.vim/plugin
	mkdir -p ~/.vim/doc

clean: clean-files clean-plugins clean-directories

clean-files:
	rm -f ~/.vimrc
	rm -f ~/.vim/mouse.vimrc
	rm -f ~/.vim/general.vimrc
	rm -f ~/.vim/autocomplete.vimrc
	rm -f ~/.vim/color_config.vimrc
	rm -f ~/.vim/global_key_mapping.vimrc
	rm -rf ~/.vim/colors/

clean-directories:
	rm -fd ~/.vim/plugin
	rm -fd ~/.vim/doc
	rm -fd ~/.vim

clean-plugins:
	rm -f ~/.vim/plugin/taboo.vim
	rm -f ~/.vim/doc/taboo.txt
