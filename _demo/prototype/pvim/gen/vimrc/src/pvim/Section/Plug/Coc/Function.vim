

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Pvim_Coc_InstallExtensions
""

function! Pvim_Coc_InstallExtensions () abort

	" https://www.npmjs.com/package/coc.nvim

	" for json.
	CocInstall coc-json

	" for javascript and typescript.
	CocInstall coc-tsserver

	" for html, handlebars and razor.
	CocInstall coc-html

	" for css, scss and less.
	CocInstall coc-css

	" for vue, use vetur.
	CocInstall coc-vetur

	" for php, use intelephense-docs.
	CocInstall coc-phpls

	" for java, use eclipse.jdt.ls.
	CocInstall coc-java

	" for ruby, use solargraph.
	CocInstall coc-solargraph

	" for rust, use Rust Language Server
	CocInstall coc-rls

	" for yaml
	CocInstall coc-yaml

	" for python, extension forked from vscode-python.
	CocInstall coc-python

	" provide default document symbol highlight and colors support.
	CocInstall coc-highlight

	" provide emmet suggest in completion list.
	CocInstall coc-emmet

	" provide snippets solution.
	CocInstall coc-snippets

endfunction


function! Pvim_Coc_InstallExtensions_Sync () abort

	" https://www.npmjs.com/package/coc.nvim

	" for json.
	CocInstall -sync coc-json

	" for javascript and typescript.
	CocInstall -sync coc-tsserver

	" for html, handlebars and razor.
	CocInstall -sync coc-html

	" for css, scss and less.
	CocInstall -sync coc-css

	" for vue, use vetur.
	CocInstall -sync coc-vetur

	" for php, use intelephense-docs.
	CocInstall -sync coc-phpls

	" for java, use eclipse.jdt.ls.
	CocInstall -sync coc-java

	" for ruby, use solargraph.
	CocInstall -sync coc-solargraph

	" for rust, use Rust Language Server
	CocInstall -sync coc-rls

	" for yaml
	CocInstall -sync coc-yaml

	" for python, extension forked from vscode-python.
	CocInstall -sync coc-python

	" provide default document symbol highlight and colors support.
	CocInstall -sync coc-highlight

	" provide emmet suggest in completion list.
	CocInstall -sync coc-emmet

	" provide snippets solution.
	CocInstall -sync coc-snippets

endfunction

""
""" Tail: Pvim_Coc_InstallExtensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
