if has("autocmd")
	augroup templates
		autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
		autocmd BufNewFile *.java 0r ~/.vim/templates/skeleton.java
		autocmd BufNewFile *.desktop 0r ~/.vim/templates/skeleton.desktop
    augroup END
endif
