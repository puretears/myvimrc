
"---------------------- Themes and color --------------------
colorscheme atom-dark					" My Vim GUI color scheme

" Some teeak of the atom-dark theme
" Fg and bg color
hi Normal      	    guifg=#eeeeee   guibg=#252b3a
" Fg and bg color of visual mode
hi Visual      	    guifg=#cdfbff   guibg=#1bb1b2
" Bg color of line number column
hi LineNr      		                guibg=bg
" Cursor color
hi Cursor           guifg=NONE      guibg=#2196f3
" Current line color
hi CursorLine                       guibg=#2F374D
" Fg and bg color of current and non current status line
hi StatusLine  	    guifg=#526669   guibg=bg 
hi StatusLineNC	    guifg=#526669   guibg=bg gui=none
" Remove vertical split
hi vertsplit        guifg=bg        guibg=bg




"---------------------- UI Tweaks --------------------
set vb t_vb=						" Disable bell after GUI started

