all: init-config color-config

init-config:
	install general.vimrc ~/.vim/general.vimrc
	install color_config.vimrc ~/.vim/color_config.vimrc
	install global_key_mapping.vimrc ~/.vim/global_key_mapping.vimrc

color-config:
	install -d ./colors/ ~/.vim/colors/
