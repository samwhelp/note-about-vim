
	" ## WhichKey
	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/vim-which-key

	Plug 'liuchengxu/vim-which-key'
	" On-demand lazy load
	"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
	" To register the descriptions when using the on-demand load feature, use the autocmd hook to call which#register(),
	" e.g., register for the Space key(see more configuration details in the following sections):
	" autocmd! User vim-which-key call which#register('<Space>', 'g:which_key_map')
