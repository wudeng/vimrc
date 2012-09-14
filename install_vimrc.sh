cd C:/.vim_runtime

echo 'set runtimepath+=C:/.vim_runtime

source C:/.vim_runtime/vimrcs/allinone.vim

try
source C:/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed Vim configuration successfully! Enjoy :-)"
