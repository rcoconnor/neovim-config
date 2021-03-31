
"configure initial settings 
source $HOME/.config/nvim/config/initial_settings.vimrc 
"Call Plug#begin() and load all the plugins 
source $HOME/.config/nvim/config/pluginloader.vimrc
"configure all plugins which are installed 
source $HOME/.config/nvim/config/pluginsettings.vimrc
"configure settings for filetypes
source $HOME/.config/nvim/config/file_type.vimrc




" Java completion
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java JCEnable



" (optional) Load all the plugins rn 
packloadall



