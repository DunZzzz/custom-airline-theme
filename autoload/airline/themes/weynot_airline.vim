scriptencoding utf-8
let g:airline#themes#weynot_airline#palette = {}

let s:N1   = [ '#ffffff' , '#912fcb' , 17  , 190 ]
let s:N2   = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:N3   = [ '#ffa800' , '#202020' , 85  , 234 ]
let g:airline#themes#weynot_airline#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#weynot_airline#palette.accents = {
			\ 'red': [ '#ff0000' , '' , 160 , ''  ]
			\ }

let pal = g:airline#themes#weynot_airline#palette
for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
	exe "let pal.".item." = pal.normal"
	for suffix in ['_modified', '_paste']
		exe "let pal.".item.suffix. " = pal.normal"
	endfor
endfor
