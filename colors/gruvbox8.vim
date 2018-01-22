" Name:         Gruvbox 8
" Description:  Retro groove color scheme originally designed by morhetz
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/gruvbox8/
" License:      Vim License (see `:help license`)
" Last Updated: Mon Jan 22 21:24:34 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Gruvbox 8] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gruvbox8'

if &background ==# 'dark'
  " Color similarity table (dark background)
  "           bg0: GUI=#282828/rgb( 40, 40, 40)  Term=235 #262626/rgb( 38, 38, 38)  [delta=0.631758]
  " neutralpurple: GUI=#b16286/rgb(177, 98,134)  Term=132 #af5f87/rgb(175, 95,135)  [delta=1.447558]
  " neutralorange: GUI=#d65d0e/rgb(214, 93, 14)  Term=166 #d75f00/rgb(215, 95,  0)  [delta=1.594261]
  "           bg1: GUI=#3c3836/rgb( 60, 56, 54)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=2.591691]
  "         green: GUI=#b8bb26/rgb(184,187, 38)  Term=142 #afaf00/rgb(175,175,  0)  [delta=3.417395]
  "        orange: GUI=#fe8019/rgb(254,128, 25)  Term=208 #ff8700/rgb(255,135,  0)  [delta=3.424299]
  "    neutralred: GUI=#cc241d/rgb(204, 36, 29)  Term=160 #d70000/rgb(215,  0,  0)  [delta=3.678548]
  "           bg2: GUI=#504945/rgb( 80, 73, 69)  Term=239 #4e4e4e/rgb( 78, 78, 78)  [delta=4.437203]
  "           fg0: GUI=#fdf4c1/rgb(253,244,193)  Term=230 #ffffd7/rgb(255,255,215)  [delta=4.485567]
  "   neutralblue: GUI=#458588/rgb( 69,133,136)  Term= 66 #5f8787/rgb( 95,135,135)  [delta=4.654950]
  "        yellow: GUI=#fabd2f/rgb(250,189, 47)  Term=214 #ffaf00/rgb(255,175,  0)  [delta=5.124662]
  "        purple: GUI=#d3869b/rgb(211,134,155)  Term=175 #d787af/rgb(215,135,175)  [delta=5.579873]
  "  neutralgreen: GUI=#98971a/rgb(152,151, 26)  Term=100 #878700/rgb(135,135,  0)  [delta=5.597892]
  "          aqua: GUI=#8ec07c/rgb(142,192,124)  Term=107 #87af5f/rgb(135,175, 95)  [delta=5.816248]
  "          blue: GUI=#83a598/rgb(131,165,152)  Term=109 #87afaf/rgb(135,175,175)  [delta=6.121678]
  "           bg3: GUI=#665c54/rgb(102, 92, 84)  Term= 59 #5f5f5f/rgb( 95, 95, 95)  [delta=6.186264]
  " neutralyellow: GUI=#d79921/rgb(215,153, 33)  Term=172 #d78700/rgb(215,135,  0)  [delta=6.285960]
  "           fg1: GUI=#ebdbb2/rgb(235,219,178)  Term=187 #d7d7af/rgb(215,215,175)  [delta=6.290489]
  "   neutralaqua: GUI=#689d6a/rgb(104,157,106)  Term= 71 #5faf5f/rgb( 95,175, 95)  [delta=7.301224]
  "           bg4: GUI=#7c6f64/rgb(124,111,100)  Term=243 #767676/rgb(118,118,118)  [delta=7.889685]
  "           fg2: GUI=#d5c4a1/rgb(213,196,161)  Term=187 #d7d7af/rgb(215,215,175)  [delta=8.170537]
  "           red: GUI=#fb4934/rgb(251, 73, 52)  Term=203 #ff5f5f/rgb(255, 95, 95)  [delta=8.215867]
  "           fg3: GUI=#bdae93/rgb(189,174,147)  Term=144 #afaf87/rgb(175,175,135)  [delta=8.449971]
  "          grey: GUI=#928374/rgb(146,131,116)  Term=102 #878787/rgb(135,135,135)  [delta=8.970802]
  "           fg4: GUI=#a89984/rgb(168,153,132)  Term=137 #af875f/rgb(175,135, 95)  [delta=10.269702]
  if !has('gui_running') && get(g:, 'gruvbox_transp_bg', 0)
    hi Normal ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=187 ctermbg=235 guifg=#ebdbb2 guibg=#282828 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=102 ctermbg=237 guifg=#928374 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=59 ctermbg=235 guifg=#665c54 guibg=#282828 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=142 ctermbg=235 guifg=#b8bb26 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=107 ctermbg=235 guifg=#8ec07c guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=203 ctermbg=235 guifg=#fb4934 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=214 ctermbg=235 guifg=#fabd2f guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#282828 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=235 guifg=#fb4934 guibg=#282828 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ErrorMsg ctermfg=235 ctermbg=203 guifg=#282828 guibg=#fb4934 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Folded ctermfg=102 ctermbg=237 guifg=#928374 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=208 ctermbg=235 guifg=#fe8019 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi LineNr ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi MoreMsg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NonText ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=187 ctermbg=239 guifg=#ebdbb2 guibg=#504945 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=239 guifg=NONE guibg=#504945 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=239 ctermbg=109 guifg=#504945 guibg=#83a598 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=243 guifg=NONE guibg=#7c6f64 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi Search ctermfg=214 ctermbg=235 guifg=#fabd2f guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#83a598 cterm=NONE,undercurl gui=NONE,undercurl
  if get(g:, "gruvbox_improved_warnings", 0)
    hi SpellCap ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  else
    hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,undercurl gui=NONE,undercurl
  endif
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#8ec07c cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d3869b cterm=NONE,undercurl gui=NONE,undercurl
  hi StatusLine ctermfg=239 ctermbg=187 guifg=#504945 guibg=#ebdbb2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=237 ctermbg=137 guifg=#3c3836 guibg=#a89984 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "gruvbox_invert_selection", 1)
    hi Visual ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  else
    hi Visual ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE gui=NONE
  endif
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=109 ctermbg=239 guifg=#83a598 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi Conditional ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=235 guifg=#fb4934 guibg=#282828 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Exception ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Operator Normal
  hi PreCondit ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  if get(g:, "gruvbox_improved_strings", 0)
    hi Special ctermfg=208 ctermbg=237 guifg=#fe8019 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi String ctermfg=187 ctermbg=237 guifg=#ebdbb2 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  else
    hi Special ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi String ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  hi Structure ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=59 guifg=NONE guibg=#665c54 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=230 ctermbg=59 guifg=#fdf4c1 guibg=#665c54 guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "gruvbox_italic", 0)
    hi Comment cterm=italic
    hi Folded cterm=italic
    hi SpellCap cterm=italic
    hi Todo cterm=italic
  endif
  if get(g:, "gruvbox_italicize_strings", 0)
    hi Special cterm=italic gui=italic
    hi String cterm=italic gui=italic
  endif
  hi GruvboxFg0 ctermfg=230 ctermbg=NONE guifg=#fdf4c1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxFg1 ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxFg2 ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxFg3 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxFg4 ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxGray ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBg0 ctermfg=235 ctermbg=NONE guifg=#282828 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBg1 ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBg2 ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBg3 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBg4 ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxRed ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxRedBold ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxGreen ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxGreenBold ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxYellow ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxYellowBold ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxBlue ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBlueBold ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxPurple ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxPurpleBold ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxAqua ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxAquaBold ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxOrange ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GruvboxOrangeBold ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi GruvboxRedSign ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi GruvboxGreenSign ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi GruvboxYellowSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi GruvboxBlueSign ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi GruvboxPurpleSign ctermfg=175 ctermbg=237 guifg=#d3869b guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi GruvboxAquaSign ctermfg=107 ctermbg=237 guifg=#8ec07c guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
  hi! link iCursor Cursor
  hi! link vCursor Cursor
  hi NormalMode ctermfg=137 ctermbg=235 guifg=#a89984 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=109 ctermbg=235 guifg=#83a598 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=107 ctermbg=235 guifg=#8ec07c guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=208 ctermbg=235 guifg=#fe8019 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=175 ctermbg=235 guifg=#d3869b guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=208 ctermbg=235 guifg=#fe8019 guibg=#282828 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    let g:terminal_color_0  = '#282828'
    let g:terminal_color_8  = '#928374'
    let g:terminal_color_1  = '#cc241d'
    let g:terminal_color_9  = '#fb4934'
    let g:terminal_color_2  = '#98971a'
    let g:terminal_color_10 = '#b8bb26'
    let g:terminal_color_3  = '#d79921'
    let g:terminal_color_11 = '#fabd2f'
    let g:terminal_color_4  = '#458588'
    let g:terminal_color_12 = '#83a598'
    let g:terminal_color_5  = '#b16286'
    let g:terminal_color_13 = '#d3869b'
    let g:terminal_color_6  = '#689d6a'
    let g:terminal_color_14 = '#8ec07c'
    let g:terminal_color_7  = '#a89984'
    let g:terminal_color_15 = '#ebdbb2'
  endif
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=237 ctermbg=187 guifg=#3c3836 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  if !(get(g:, "gruvbox_plugin_hi_groups", 0) || get(g:, "gruvbox_filetype_hi_groups", 0))
    finish
  endif
  if get(g:, "gruvbox_plugin_hi_groups", 0)
    hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,undercurl gui=NONE,undercurl
    hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,undercurl gui=NONE,undercurl
    hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#83a598 cterm=NONE,undercurl gui=NONE,undercurl
    hi ALEErrorSign ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ALEWarningSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ALEInfoSign ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineCurrent ctermfg=235 ctermbg=137 guifg=#282828 guibg=#a89984 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineActive ctermfg=137 ctermbg=239 guifg=#a89984 guibg=#504945 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineHidden ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi BufTabLineFill ctermfg=235 ctermbg=235 guifg=#282828 guibg=#282828 guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMatch ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPNoEntries ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtBase ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPPrtCursor ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPLinePre ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CtrlPMode1 ctermfg=109 ctermbg=239 guifg=#83a598 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPMode2 ctermfg=235 ctermbg=109 guifg=#282828 guibg=#83a598 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi CtrlPStats ctermfg=137 ctermbg=239 guifg=#a89984 guibg=#504945 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi DirvishPathTail ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi DirvishArg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi gitcommitDiscardedFile ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi GitGutterAdd ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChange ctermfg=107 ctermbg=237 guifg=#8ec07c guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterDelete ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi GitGutterChangeDelete ctermfg=107 ctermbg=237 guifg=#8ec07c guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    if get(g:, "indent_guides_auto_colors", 0)
      if get(g: "gruvbox_invert_indent_guides", 0)
        hi IndentGuidesOdd ctermfg=235 ctermbg=239 guifg=#282828 guibg=#504945 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
        hi IndentGuidesEven ctermfg=235 ctermbg=237 guifg=#282828 guibg=#3c3836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      else
        hi IndentGuidesOdd ctermfg=235 ctermbg=239 guifg=#282828 guibg=#504945 guisp=NONE cterm=NONE gui=NONE
        hi IndentGuidesEven ctermfg=235 ctermbg=237 guifg=#282828 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
      endif
    endif
    " IndentLine
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 239
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = #504945
    endif
    hi NERDTreeDir ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeDirSlash ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeOpenable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeClosable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeFile ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeExecFile ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeUp ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeCWD ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeHelp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOn ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi NERDTreeToggleOff ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwDir ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwClassify ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwLink ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwSymLink ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwExe ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwComment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwList ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwHelpCmd ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwCmdSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi netrwVersion ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    " Rainbow Parentheses
    if !exists('g:rbpt_colorpairs')
      let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
            \ ['red', '#cc241d'], ['166', '#d65d0e']]
    endif

    let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
    let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif
    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
    endif
    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
    endif

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLu ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLo ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi ShowMarksHLm ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignifySignAdd ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignChange ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignifySignDelete ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkText ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SignatureMarkerText ctermfg=175 ctermbg=237 guifg=#d3869b guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi StartifyBracket ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFile ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyNumber ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyPath ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySlash ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySection ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifySpecial ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyHeader ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi StartifyFooter ctermfg=239 ctermbg=NONE guifg=#504945 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fb4934 cterm=NONE,undercurl gui=NONE,undercurl
    hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#fabd2f cterm=NONE,undercurl gui=NONE,undercurl
    hi SyntasticErrorSign ctermfg=203 ctermbg=237 guifg=#fb4934 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
    hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    hi multiple_cursors_visual ctermfg=NONE ctermbg=239 guifg=NONE guibg=#504945 guisp=NONE cterm=NONE gui=NONE
    let g:vimshell_escape_colors = [
          \ #7c6f64, #fb4934, #b8bb26, #fabd2f,
          \ #83a598, #d3869b, #8ec07c, #a89984,
          \ #282828, #fb4934, #b8bb26, #fe8019,
          \ #83a598, #d3869b, #8ec07c, #fdf4c1
          \ ]
  endif
  if get(g:, "gruvbox_filetype_hi_groups", 0)
    hi diffAdded ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffRemoved ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffChanged ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffFile ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffNewFile ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi diffLine ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlEndTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagName ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlArg ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlScriptTag ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlTagN ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlSpecialTagName ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlLink ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlSpecialChar ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlBold ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
    hi htmlBoldItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
    hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
    hi htmlUnderline ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi htmlUnderlineItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
    hi htmlItalic ctermfg=fg ctermbg=235 guifg=fg guibg=#282828 guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi xmlTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEndTag ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlTagName ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEqual ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi docbkKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlDocTypeKeyword ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataStart ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlCdataCdata ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdFunction ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdTagName ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttrib ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlProcessingDelim ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlAttribPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntity ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi xmlEntityPunct ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimCommentTitle ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi vimNotation ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimFuncSID ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSetSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimSep ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimContinue ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureKeyword ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCond ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureSpecial ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDefine ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureFunc ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRepeat ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureCharacter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureStringEscape ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureException ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpEscape ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureRegexpCharClass ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureAnonArg ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureVariable ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMacro ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureMeta ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureDeref ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureQuote ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi clojureUnquote ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cOperator ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cStructure ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltin ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltinObj ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBuiltinFunc ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDecorator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonInclude ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonImport ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonRun ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonCoding ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonException ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonExceptions ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonBoolean ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDot ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonConditional ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonRepeat ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi pythonDottedName ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi cssBraces ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFunctionName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssClassName ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColor ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssSelectorOp2 ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssImportant ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssVendor ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTextProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssAnimationProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssUIProp ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransformProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTransitionProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPrintProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPositioningProp ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBoxProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontDescriptorProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFlexibleBoxProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBorderOutlineProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssBackgroundProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssMarginProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssListProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssTableProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssFontProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssPaddingProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssDimensionProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssRenderProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssColorProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi cssGeneratedContentProp ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptIdentifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptMember ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNumber ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaScriptParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptImport ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExport ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassExtends ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDefault ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuperName ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobal ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptEndColons ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncArg ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptGlobalMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptNodeGlobal ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrayStaticMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptCacheMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDateMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMathStaticMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptURLUtilsProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMNavigatorProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMDocProp ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMLocationMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBOMWindowMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptStringMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptVariable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassSuper ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptFuncKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFunc ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptClassStatic ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptForOperator ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptYield ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptExceptions ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptMessage ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSB ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptTemplateSubstitution ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLabel ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptObjectLabel ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptPropertyName ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptLogicSymbols ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptArrowFunc ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamName ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocTags ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNotation ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocParamType ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDocNamedParamType ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptBrackets ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMElemAttrs ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMEventMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMNodeMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptDOMStorageMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptHeadersMethod ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAsyncFuncKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javascriptAwaitFuncKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsExtendsKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsExportDefault ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsTemplateBraces ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsGlobalNodeObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsGlobalObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsFuncParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsUndefined ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsClassDefinition ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptReserved ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptLabel ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptFuncKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptIdentifier ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptEndColons ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptDOMObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptAjaxMethods ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptLogicSymbols ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi typeScriptGlobalObjects ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptParens ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptOpSymbols ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptHtmlElemProperties ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptNull ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi typeScriptInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptModuleName ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptWhere ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptDelimiter ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptType ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptImportKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptHidingKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptAsKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptStructure ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptOperator ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptTypeVar ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptConstructor ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptFunction ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptConditional ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi purescriptBacktick ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeExtendedOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeSpecialOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeCurly ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi coffeeBracket ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyStringDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi rubyInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcTypeModifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi objcDirective ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDirective ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goConstants ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDeclaration ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goDeclType ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi goBuiltins ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaIn ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaFunction ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi luaTable ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonSpecialOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonExtendedOp ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonFunction ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi moonObject ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaAnnotation ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaDocTags ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen1 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen2 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen3 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen4 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaParen5 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaOperator ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi javaVarArg ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirInterpolationDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi elixirModuleDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaNameDefinition ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCaseFollowing ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaCapitalWord ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeExtension ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeyword ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaKeywordModifier ctermfg=203 ctermbg=NONE guifg=#fb4934 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaSpecial ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaOperator ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaTypeTypePostDeclaration ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInstanceDeclaration ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi scalaInterpolation ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownItalic ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
    hi markdownH1 ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH2 ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH3 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH4 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi markdownH5 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownH6 ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCode ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeBlock ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownCodeDelimiter ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownBlockquote ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkTextDelimiter ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownHeadingDelimiter ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrl ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownUrlTitleDelimiter ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownLinkText ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellIdentifier ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellSeparator ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDelimiter ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellOperators ctermfg=109 ctermbg=NONE guifg=#83a598 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBacktick ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellStatement ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellConditional ctermfg=208 ctermbg=NONE guifg=#fe8019 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellLet ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDefault ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellWhere ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBottom ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellBlockKeywords ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellImportKeywords ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeclKeyword ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellDeriving ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellAssocType ctermfg=107 ctermbg=NONE guifg=#8ec07c guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellNumber ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellPragma ctermfg=175 ctermbg=NONE guifg=#d3869b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellString ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi haskellChar ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonKeyword ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonQuote ctermfg=142 ctermbg=NONE guifg=#b8bb26 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonBraces ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi jsonString ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  finish
endif

" Color similarity table (light background)
"           fg0: GUI=#282828/rgb( 40, 40, 40)  Term=235 #262626/rgb( 38, 38, 38)  [delta=0.631758]
" neutralpurple: GUI=#b16286/rgb(177, 98,134)  Term=132 #af5f87/rgb(175, 95,135)  [delta=1.447558]
" neutralorange: GUI=#d65d0e/rgb(214, 93, 14)  Term=166 #d75f00/rgb(215, 95,  0)  [delta=1.594261]
"           fg1: GUI=#3c3836/rgb( 60, 56, 54)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=2.591691]
"    neutralred: GUI=#cc241d/rgb(204, 36, 29)  Term=160 #d70000/rgb(215,  0,  0)  [delta=3.678548]
"           red: GUI=#9d0006/rgb(157,  0,  6)  Term=124 #af0000/rgb(175,  0,  0)  [delta=3.945287]
"           bg0: GUI=#fdf4c1/rgb(253,244,193)  Term=230 #ffffd7/rgb(255,255,215)  [delta=4.485567]
"   neutralblue: GUI=#458588/rgb( 69,133,136)  Term= 66 #5f8787/rgb( 95,135,135)  [delta=4.654950]
"  neutralgreen: GUI=#98971a/rgb(152,151, 26)  Term=100 #878700/rgb(135,135,  0)  [delta=5.597892]
"           fg3: GUI=#665c54/rgb(102, 92, 84)  Term= 59 #5f5f5f/rgb( 95, 95, 95)  [delta=6.186264]
" neutralyellow: GUI=#d79921/rgb(215,153, 33)  Term=172 #d78700/rgb(215,135,  0)  [delta=6.285960]
"           bg1: GUI=#ebdbb2/rgb(235,219,178)  Term=187 #d7d7af/rgb(215,215,175)  [delta=6.290489]
"          aqua: GUI=#427b58/rgb( 66,123, 88)  Term= 29 #00875f/rgb(  0,135, 95)  [delta=6.512362]
"   neutralaqua: GUI=#689d6a/rgb(104,157,106)  Term= 71 #5faf5f/rgb( 95,175, 95)  [delta=7.301224]
"         green: GUI=#79740e/rgb(121,116, 14)  Term=100 #878700/rgb(135,135,  0)  [delta=7.387225]
"           fg4: GUI=#7c6f64/rgb(124,111,100)  Term=243 #767676/rgb(118,118,118)  [delta=7.889685]
"        yellow: GUI=#b57614/rgb(181,118, 20)  Term=172 #d78700/rgb(215,135,  0)  [delta=8.074928]
"        orange: GUI=#af3a03/rgb(175, 58,  3)  Term=124 #af0000/rgb(175,  0,  0)  [delta=8.117734]
"           bg2: GUI=#d5c4a1/rgb(213,196,161)  Term=187 #d7d7af/rgb(215,215,175)  [delta=8.170537]
"           bg3: GUI=#bdae93/rgb(189,174,147)  Term=144 #afaf87/rgb(175,175,135)  [delta=8.449971]
"        purple: GUI=#8f3f71/rgb(143, 63,113)  Term=126 #af0087/rgb(175,  0,135)  [delta=8.757905]
"          grey: GUI=#928374/rgb(146,131,116)  Term=102 #878787/rgb(135,135,135)  [delta=8.970802]
"          blue: GUI=#076678/rgb(  7,102,120)  Term= 23 #005f5f/rgb(  0, 95, 95)  [delta=9.442168]
"           bg4: GUI=#a89984/rgb(168,153,132)  Term=137 #af875f/rgb(175,135, 95)  [delta=10.269702]
"           fg2: GUI=#503836/rgb( 80, 56, 54)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=12.071597]
if !has('gui_running') && get(g:, 'gruvbox_transp_bg', 0)
  hi Normal ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=237 ctermbg=230 guifg=#3c3836 guibg=#fdf4c1 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=187 guifg=#928374 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=NONE ctermbg=187 guifg=NONE guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=144 ctermbg=230 guifg=#bdae93 guibg=#fdf4c1 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=187 guifg=NONE guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=187 guifg=NONE guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=100 ctermbg=230 guifg=#79740e guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=29 ctermbg=230 guifg=#427b58 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=124 ctermbg=230 guifg=#9d0006 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=172 ctermbg=230 guifg=#b57614 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=230 ctermbg=NONE guifg=#fdf4c1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=124 ctermbg=230 guifg=#9d0006 guibg=#fdf4c1 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ErrorMsg ctermfg=230 ctermbg=124 guifg=#fdf4c1 guibg=#9d0006 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Folded ctermfg=102 ctermbg=187 guifg=#928374 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=124 ctermbg=230 guifg=#af3a03 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi LineNr ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi MoreMsg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NonText ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=237 ctermbg=187 guifg=#3c3836 guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=187 guifg=NONE guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=187 ctermbg=23 guifg=#d5c4a1 guibg=#076678 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=137 guifg=NONE guibg=#a89984 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi Search ctermfg=172 ctermbg=230 guifg=#b57614 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#076678 cterm=NONE,undercurl gui=NONE,undercurl
if get(g:, "gruvbox_improved_warnings", 0)
  hi SpellCap ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
else
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,undercurl gui=NONE,undercurl
endif
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#427b58 cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#8f3f71 cterm=NONE,undercurl gui=NONE,undercurl
hi StatusLine ctermfg=187 ctermbg=237 guifg=#d5c4a1 guibg=#3c3836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=187 ctermbg=243 guifg=#ebdbb2 guibg=#7c6f64 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine TabLineFill
hi TabLineFill ctermfg=137 ctermbg=187 guifg=#a89984 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=100 ctermbg=187 guifg=#79740e guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "gruvbox_invert_selection", 1)
  hi Visual ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
else
  hi Visual ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE gui=NONE
endif
hi! link VisualNOS Visual
hi WarningMsg ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=23 ctermbg=187 guifg=#076678 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Boolean ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi Conditional ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=124 ctermbg=230 guifg=#9d0006 guibg=#fdf4c1 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Exception ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Identifier ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Operator Normal
hi PreCondit ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
if get(g:, "gruvbox_improved_strings", 0)
  hi Special ctermfg=124 ctermbg=187 guifg=#af3a03 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=237 ctermbg=187 guifg=#3c3836 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
else
  hi Special ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
hi Structure ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
hi Type ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=144 guifg=NONE guibg=#bdae93 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=235 ctermbg=144 guifg=#282828 guibg=#bdae93 guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "gruvbox_italic", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi SpellCap cterm=italic
  hi Todo cterm=italic
endif
if get(g:, "gruvbox_italicize_strings", 0)
  hi Special cterm=italic gui=italic
  hi String cterm=italic gui=italic
endif
hi GruvboxFg0 ctermfg=235 ctermbg=NONE guifg=#282828 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxFg1 ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxFg2 ctermfg=237 ctermbg=NONE guifg=#503836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxFg3 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxFg4 ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxGray ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBg0 ctermfg=230 ctermbg=NONE guifg=#fdf4c1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBg1 ctermfg=187 ctermbg=NONE guifg=#ebdbb2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBg2 ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBg3 ctermfg=144 ctermbg=NONE guifg=#bdae93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBg4 ctermfg=137 ctermbg=NONE guifg=#a89984 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxRed ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxRedBold ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxGreen ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxGreenBold ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxYellow ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxYellowBold ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxBlue ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxBlueBold ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxPurple ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxPurpleBold ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxAqua ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxAquaBold ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxOrange ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GruvboxOrangeBold ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi GruvboxRedSign ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi GruvboxGreenSign ctermfg=100 ctermbg=187 guifg=#79740e guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi GruvboxYellowSign ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi GruvboxBlueSign ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi GruvboxPurpleSign ctermfg=126 ctermbg=187 guifg=#8f3f71 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi GruvboxAquaSign ctermfg=29 ctermbg=187 guifg=#427b58 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
hi! link iCursor Cursor
hi! link vCursor Cursor
hi NormalMode ctermfg=243 ctermbg=230 guifg=#7c6f64 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=23 ctermbg=230 guifg=#076678 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=29 ctermbg=230 guifg=#427b58 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=124 ctermbg=230 guifg=#af3a03 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=126 ctermbg=230 guifg=#8f3f71 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=124 ctermbg=230 guifg=#af3a03 guibg=#fdf4c1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  let g:terminal_color_0  = '#fdf4c1'
  let g:terminal_color_8  = '#928374'
  let g:terminal_color_1  = '#cc241d'
  let g:terminal_color_9  = '#9d0006'
  let g:terminal_color_2  = '#98971a'
  let g:terminal_color_10 = '#79740e'
  let g:terminal_color_3  = '#d79921'
  let g:terminal_color_11 = '#b57614'
  let g:terminal_color_4  = '#458588'
  let g:terminal_color_12 = '#076678'
  let g:terminal_color_5  = '#b16286'
  let g:terminal_color_13 = '#8f3f71'
  let g:terminal_color_6  = '#689d6a'
  let g:terminal_color_14 = '#427b58'
  let g:terminal_color_7  = '#7c6f64'
  let g:terminal_color_15 = '#3c3836'
endif
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=187 ctermbg=237 guifg=#ebdbb2 guibg=#3c3836 guisp=NONE cterm=NONE gui=NONE
if !(get(g:, "gruvbox_plugin_hi_groups", 0) || get(g:, "gruvbox_filetype_hi_groups", 0))
  finish
endif
if get(g:, "gruvbox_plugin_hi_groups", 0)
  hi ALEError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,undercurl gui=NONE,undercurl
  hi ALEWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,undercurl gui=NONE,undercurl
  hi ALEInfo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#076678 cterm=NONE,undercurl gui=NONE,undercurl
  hi ALEErrorSign ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ALEWarningSign ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ALEInfoSign ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineCurrent ctermfg=230 ctermbg=243 guifg=#fdf4c1 guibg=#7c6f64 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineActive ctermfg=243 ctermbg=187 guifg=#7c6f64 guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineHidden ctermfg=137 ctermbg=187 guifg=#a89984 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi BufTabLineFill ctermfg=230 ctermbg=230 guifg=#fdf4c1 guibg=#fdf4c1 guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMatch ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPNoEntries ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtBase ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPPrtCursor ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPLinePre ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CtrlPMode1 ctermfg=23 ctermbg=187 guifg=#076678 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPMode2 ctermfg=230 ctermbg=23 guifg=#fdf4c1 guibg=#076678 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CtrlPStats ctermfg=243 ctermbg=187 guifg=#7c6f64 guibg=#d5c4a1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DirvishPathTail ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DirvishArg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link EasyMotionTarget Search
  hi! link EasyMotionShade Comment
  hi gitcommitSelectedFile ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi gitcommitDiscardedFile ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterAdd ctermfg=100 ctermbg=187 guifg=#79740e guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChange ctermfg=29 ctermbg=187 guifg=#427b58 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterDelete ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChangeDelete ctermfg=29 ctermbg=187 guifg=#427b58 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  if get(g:, "indent_guides_auto_colors", 0)
    if get(g: "gruvbox_invert_indent_guides", 0)
      hi IndentGuidesOdd ctermfg=230 ctermbg=187 guifg=#fdf4c1 guibg=#d5c4a1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
      hi IndentGuidesEven ctermfg=230 ctermbg=187 guifg=#fdf4c1 guibg=#ebdbb2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
    else
      hi IndentGuidesOdd ctermfg=230 ctermbg=187 guifg=#fdf4c1 guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
      hi IndentGuidesEven ctermfg=230 ctermbg=187 guifg=#fdf4c1 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
    endif
  endif
  " IndentLine
  if !exists('g:indentLine_color_term')
    let g:indentLine_color_term = 187
  endif
  if !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = #d5c4a1
  endif
  hi NERDTreeDir ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeDirSlash ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeOpenable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeClosable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeFile ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeExecFile ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeUp ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeCWD ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeHelp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOn ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NERDTreeToggleOff ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwDir ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwClassify ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwLink ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwSymLink ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwExe ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwComment ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwList ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwHelpCmd ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwCmdSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi netrwVersion ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  " Rainbow Parentheses
  if !exists('g:rbpt_colorpairs')
    let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
          \ ['red', '#cc241d'], ['166', '#d65d0e']]
  endif

  let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
  let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

  if !exists('g:rainbow_conf')
    let g:rainbow_conf = {}
  endif
  if !has_key(g:rainbow_conf, 'guifgs')
    let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
  endif
  if !has_key(g:rainbow_conf, 'ctermfgs')
    let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
  endif

  let g:niji_dark_colours = g:rbpt_colorpairs
  let g:niji_light_colours = g:rbpt_colorpairs
  hi ShowMarksHLl ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLu ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLo ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi ShowMarksHLm ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignifySignAdd ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkText ctermfg=23 ctermbg=187 guifg=#076678 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SignatureMarkerText ctermfg=126 ctermbg=187 guifg=#8f3f71 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi StartifyBracket ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFile ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyNumber ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyPath ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySlash ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySection ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifySpecial ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyHeader ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StartifyFooter ctermfg=187 ctermbg=NONE guifg=#d5c4a1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticError ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9d0006 cterm=NONE,undercurl gui=NONE,undercurl
  hi SyntasticWarning ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b57614 cterm=NONE,undercurl gui=NONE,undercurl
  hi SyntasticErrorSign ctermfg=124 ctermbg=187 guifg=#9d0006 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=172 ctermbg=187 guifg=#b57614 guibg=#ebdbb2 guisp=NONE cterm=NONE gui=NONE
  hi multiple_cursors_cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi multiple_cursors_visual ctermfg=NONE ctermbg=187 guifg=NONE guibg=#d5c4a1 guisp=NONE cterm=NONE gui=NONE
  let g:vimshell_escape_colors = [
        \ #a89984, #9d0006, #79740e, #b57614,
        \ #076678, #8f3f71, #427b58, #7c6f64,
        \ #fdf4c1, #9d0006, #79740e, #af3a03,
        \ #076678, #8f3f71, #427b58, #282828
        \ ]
endif
if get(g:, "gruvbox_filetype_hi_groups", 0)
  hi diffAdded ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffFile ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffNewFile ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffLine ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlEndTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagName ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlArg ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlScriptTag ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlTagN ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlSpecialTagName ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlLink ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlSpecialChar ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlBold ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldUnderline ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,bold,underline gui=NONE,bold,underline
  hi htmlBoldItalic ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
  hi htmlBoldUnderlineItalic ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,bold,italic,underline gui=NONE,bold,italic,underline
  hi htmlUnderline ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi htmlUnderlineItalic ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,italic,underline gui=NONE,italic,underline
  hi htmlItalic ctermfg=fg ctermbg=230 guifg=fg guibg=#fdf4c1 guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi xmlTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEndTag ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTagName ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEqual ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi docbkKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi xmlDocTypeDecl ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlDocTypeKeyword ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataStart ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlCdataCdata ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdFunction ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdTagName ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttrib ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlProcessingDelim ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi dtdParamEntityDPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlAttribPunct ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntity ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEntityPunct ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCommentTitle ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi vimNotation ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimFuncSID ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSetSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSep ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimContinue ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureKeyword ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCond ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureSpecial ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDefine ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureFunc ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRepeat ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureCharacter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureStringEscape ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureException ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpEscape ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureRegexpCharClass ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link clojureRegexpMod clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi clojureParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureAnonArg ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureVariable ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMacro ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureMeta ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureDeref ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureQuote ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi clojureUnquote ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cOperator ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStructure ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltin ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltinObj ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBuiltinFunc ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDecorator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonInclude ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonImport ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonRun ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonCoding ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonException ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonExceptions ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonBoolean ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDot ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonConditional ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonRepeat ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi pythonDottedName ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi cssBraces ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFunctionName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssClassName ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColor ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssSelectorOp2 ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssImportant ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssVendor ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTextProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssAnimationProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssUIProp ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransformProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTransitionProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPrintProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPositioningProp ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBoxProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontDescriptorProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFlexibleBoxProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBorderOutlineProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssBackgroundProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssMarginProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssListProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssTableProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssFontProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssPaddingProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssDimensionProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssRenderProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssColorProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cssGeneratedContentProp ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptIdentifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptMember ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNumber ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaScriptParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptImport ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExport ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassExtends ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDefault ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuperName ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobal ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptEndColons ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncArg ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptGlobalMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptNodeGlobal ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrayStaticMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptCacheMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDateMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMathStaticMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptURLUtilsProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMNavigatorProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMDocProp ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMLocationMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBOMWindowMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptStringMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptVariable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassSuper ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFunc ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptClassStatic ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptForOperator ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptYield ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptExceptions ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptMessage ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSB ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptTemplateSubstitution ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLabel ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptObjectLabel ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptPropertyName ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptLogicSymbols ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptArrowFunc ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamName ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocTags ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNotation ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocParamType ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDocNamedParamType ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptBrackets ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMElemAttrs ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMEventMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMNodeMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptDOMStorageMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptHeadersMethod ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAsyncFuncKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javascriptAwaitFuncKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExtendsKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExportDefault ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsTemplateBraces ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsGlobalNodeObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsGlobalObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsFuncParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsUndefined ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassDefinition ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptReserved ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptLabel ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptFuncKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptIdentifier ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptEndColons ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptDOMObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptAjaxMethods ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptLogicSymbols ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link typeScriptDocSeeTag Comment
  hi! link typeScriptDocParam Comment
  hi! link typeScriptDocTags vimCommentTitle
  hi typeScriptGlobalObjects ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptParens ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptOpSymbols ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptHtmlElemProperties ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptNull ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi typeScriptInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptModuleName ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptWhere ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptDelimiter ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptType ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptImportKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptHidingKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptAsKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptStructure ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptOperator ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptTypeVar ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptConstructor ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptFunction ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptConditional ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi purescriptBacktick ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeExtendedOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeSpecialOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeCurly ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi coffeeBracket ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyStringDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi rubyInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcTypeModifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi objcDirective ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDirective ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goConstants ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclaration ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclType ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goBuiltins ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaIn ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaFunction ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi luaTable ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonSpecialOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonExtendedOp ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonFunction ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi moonObject ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaAnnotation ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaDocTags ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link javaCommentTitle vimCommentTitle
  hi javaParen ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen1 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen2 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen3 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen4 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaParen5 ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaOperator ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi javaVarArg ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link elixirDocString Comment
  hi elixirStringDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirInterpolationDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi elixirModuleDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaNameDefinition ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCaseFollowing ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaCapitalWord ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeExtension ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeyword ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaKeywordModifier ctermfg=124 ctermbg=NONE guifg=#9d0006 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaSpecial ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaOperator ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaTypeTypePostDeclaration ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInstanceDeclaration ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi scalaInterpolation ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownItalic ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi markdownH1 ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH2 ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH3 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH4 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi markdownH5 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownH6 ctermfg=172 ctermbg=NONE guifg=#b57614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCode ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeBlock ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownCodeDelimiter ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownBlockquote ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownOrderedListMarker ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingRule ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkTextDelimiter ctermfg=59 ctermbg=NONE guifg=#665c54 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownHeadingDelimiter ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrl ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownUrlTitleDelimiter ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownLinkText ctermfg=102 ctermbg=NONE guifg=#928374 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link markdownIdDeclaration markdownLinkText
  hi haskellType ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellIdentifier ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellSeparator ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDelimiter ctermfg=243 ctermbg=NONE guifg=#7c6f64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellOperators ctermfg=23 ctermbg=NONE guifg=#076678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBacktick ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellStatement ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellConditional ctermfg=124 ctermbg=NONE guifg=#af3a03 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellLet ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDefault ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellWhere ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBottom ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellBlockKeywords ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellImportKeywords ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeclKeyword ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellDeriving ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellAssocType ctermfg=29 ctermbg=NONE guifg=#427b58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellNumber ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellPragma ctermfg=126 ctermbg=NONE guifg=#8f3f71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellString ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi haskellChar ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonKeyword ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonQuote ctermfg=100 ctermbg=NONE guifg=#79740e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonBraces ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsonString ctermfg=237 ctermbg=NONE guifg=#3c3836 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
finish

" Color: neutralred        rgb(204,  36,  29)    ~
" Color: neutralgreen      rgb(152, 151,  26)    ~
" Color: neutralyellow     rgb(215, 153,  33)    ~
" Color: neutralblue       rgb( 69, 133, 136)    ~
" Color: neutralpurple     rgb(177,  98, 134)    ~
" Color: neutralaqua       rgb(104, 157, 106)    ~
" Color: neutralorange     rgb(214,  93,  14)    ~
" Background: dark
" Color: bg0 rgb(40,40,40) ~
" Color: bg1             rgb(60,  56,  54)     ~
" Color: bg2             rgb(80,  73,  69)     ~
" Color: bg3             rgb(102, 92,  84)     ~
" Color: bg4             rgb(124, 111, 100)    ~
" Color: fg0             rgb(253, 244, 193)    ~
" Color: fg1             rgb(235, 219, 178)    ~
" Color: fg2             rgb(213, 196, 161)    ~
" Color: fg3             rgb(189, 174, 147)    ~
" Color: fg4             rgb(168, 153, 132)    ~
" Color: grey            rgb(146, 131, 116)    ~
" Color: red             rgb(251, 73,  52)     203
" Color: green           rgb(184, 187, 38)     ~
" Color: yellow          rgb(250, 189, 47)     ~
" Color: blue            rgb(131, 165, 152)    ~
" Color: purple          rgb(211, 134, 155)    ~
" Color: aqua            rgb(142, 192, 124)    ~
" Color: orange          rgb(254, 128, 25)     ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   grey   none
"     SignColumn   none   none
"     VertSplit    bg3    none
"     Normal       fg1    bg0
"     CursorLineNr yellow bg1
"     FoldColumn   grey   bg1
"     SignColumn   none   bg1
"     VertSplit    bg3    bg0
" ColorColumn                      none   bg1
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none   bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none    bold
" EndOfBuffer                      bg0    none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           bg4    none
" MatchParen                       none   bg3     bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" NonText                          bg2    none
" Pmenu                            fg1    bg2
" PmenuSbar                        none   bg2
" PmenuSel                         bg2    blue    bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       bg2    none
" SpellBad                         none   none    undercurl s=blue
" SpellCap                         green  none    t=bold g=bold,italic
" SpellCap                         none   none    undercurl s=red
" SpellLocal                       none   none    undercurl s=aqua
" SpellRare                        none   none    undercurl s=purple
" StatusLine                       bg2    fg1     reverse
" StatusLineNC                     bg1    fg4     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           none   bg3     reverse
" Visual                           none   bg3
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Boolean                          purple none
" Character                        purple none
" Comment                          grey   none    g=italic
" Conditional                      red    none
" Constant                         purple none
" Define                           aqua   none
" Debug                            red    none
" Delimiter                        orange none
" Error                            red    bg0     bold,reverse
" Exception                        red    none
" Float                            purple none
" Function                         green  none    bold
" Identifier                       blue   none
" Ignore                           fg     none
" Include                          aqua   none
" Keyword                          red    none
" Label                            red    none
" Macro                            aqua   none
" Number                           purple none
" Operator                      -> Normal
" PreCondit                        aqua   none
" PreProc                          aqua   none
" Repeat                           red    none
" SpecialChar                      red    none
" SpecialComment                   red    none
" Statement                        red    none
" StorageClass                     orange none
" Special                          orange bg1
" String                           fg1    bg1
" Special                          orange none
" String                           green  none
" Structure                        aqua   none
" Tag                           -> Special
" Todo                             fg     bg0     t=bold g=bold,italic
" Type                             yellow none
" Typedef                          yellow none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" GruvboxFg0        fg0    none
" GruvboxFg1        fg1    none
" GruvboxFg2        fg2    none
" GruvboxFg3        fg3    none
" GruvboxFg4        fg4    none
" GruvboxGray       grey   none
" GruvboxBg0        bg0    none
" GruvboxBg1        bg1    none
" GruvboxBg2        bg2    none
" GruvboxBg3        bg3    none
" GruvboxBg4        bg4    none
" GruvboxRed        red    none
" GruvboxRedBold    red    none bold
" GruvboxGreen      green  none
" GruvboxGreenBold  green  none bold
" GruvboxYellow     yellow none
" GruvboxYellowBold yellow none bold
" GruvboxBlue       blue   none
" GruvboxBlueBold   blue   none bold
" GruvboxPurple     purple none
" GruvboxPurpleBold purple none bold
" GruvboxAqua       aqua   none
" GruvboxAquaBold   aqua   none bold
" GruvboxOrange     orange none
" GruvboxOrangeBold orange none bold
" GruvboxRedSign    red    bg1
" GruvboxGreenSign  green  bg1
" GruvboxYellowSign yellow bg1
" GruvboxBlueSign   blue   bg1
" GruvboxPurpleSign purple bg1
" GruvboxAquaSign   aqua   bg1
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg4    bg0     reverse
" InsertMode                       blue   bg0     reverse
" ReplaceMode                      aqua   bg0     reverse
" VisualMode                       orange bg0     reverse
" CommandMode                      purple bg0     reverse
" Warnings                         orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
" ALEError                         none   none    undercurl s=red
" ALEWarning                       none   none    undercurl s=red
" ALEInfo                          none   none    undercurl s=blue
" ALEErrorSign                     red    bg1
" ALEWarningSign                   yellow bg1
" ALEInfoSign                      blue   bg1
" BufTabLineCurrent                bg0    fg4
" BufTabLineActive                 fg4    bg2
" BufTabLineHidden                 bg4    bg1
" BufTabLineFill                   bg0    bg0
" CtrlPMatch                       yellow none
" CtrlPNoEntries                   red    none
" CtrlPPrtBase                     bg2    none
" CtrlPPrtCursor                   blue   none
" CtrlPLinePre                     bg2    none
" CtrlPMode1                       blue   bg2     bold
" CtrlPMode2                       bg0    blue    bold
" CtrlPStats                       fg4    bg2     bold
" DirvishPathTail                  aqua   none
" DirvishArg                       yellow none
" EasyMotionTarget              -> Search
" EasyMotionShade               -> Comment
" gitcommitSelectedFile            green  none
" gitcommitDiscardedFile           red    none
" GitGutterAdd                     green  bg1
" GitGutterChange                  aqua   bg1
" GitGutterDelete                  red    bg1
" GitGutterChangeDelete            aqua   bg1
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      aqua   none
" NERDTreeDirSlash                 aqua   none
" NERDTreeOpenable                 orange none
" NERDTreeClosable                 orange none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       grey   none
" NERDTreeCWD                      green  none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         aqua   none
" netrwClassify                    aqua   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg1
" ShowMarksHLu                     blue   bg1
" ShowMarksHLo                     blue   bg1
" ShowMarksHLm                     blue   bg1
" SignifySignAdd                   green  none
" SignifySignChange                aqua   none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg1
" SignatureMarkerText              purple bg1
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    none
" StartifyNumber                   blue   none
" StartifyPath                     grey   none
" StartifySlash                    grey   none
" StartifySection                  yellow none
" StartifySpecial                  bg2    none
" StartifyHeader                   orange none
" StartifyFooter                   bg2    none
" SyntasticError                   none   none    undercurl s=red
" SyntasticWarning                 none   none    undercurl s=yellow
" SyntasticErrorSign               red    bg1
" SyntasticWarningSign             yellow bg1
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" diffAdded                        green  none
" diffRemoved                      red    none
" diffChanged                      aqua   none
" diffFile                         orange none
" diffNewFile                      yellow none
" diffLine                         blue   none
" htmlTag                          blue   none
" htmlEndTag                       blue   none
" htmlTagName                      aqua   none    bold
" htmlArg                          aqua   none
" htmlScriptTag                    purple none
" htmlTagN                         fg1    none
" htmlSpecialTagName               aqua   none    bold
" htmlLink                         fg4    none    underline
" htmlSpecialChar                  orange none
" htmlBold                         fg     bg0     bold
" htmlBoldUnderline                fg     bg0     bold,underline
" htmlBoldItalic                   fg     bg0     bold,italic
" htmlBoldUnderlineItalic          fg     bg0     bold,underline,italic
" htmlUnderline                    fg     bg0     underline
" htmlUnderlineItalic              fg     bg0     underline,italic
" htmlItalic                       fg     bg0     italic
" xmlTag                           blue   none
" xmlEndTag                        blue   none
" xmlTagName                       blue   none
" xmlEqual                         blue   none
" docbkKeyword                     aqua   none    bold
" xmlDocTypeDecl                   grey   none
" xmlDocTypeKeyword                purple none
" xmlCdataStart                    grey   none
" xmlCdataCdata                    purple none
" dtdFunction                      grey   none
" dtdTagName                       purple none
" xmlAttrib                        aqua   none
" xmlProcessingDelim               grey   none
" dtdParamEntityPunct              grey   none
" dtdParamEntityDPunct             grey   none
" xmlAttribPunct                   grey   none
" xmlEntity                        orange none
" xmlEntityPunct                   orange none
" vimCommentTitle                  fg4    none    bold
" vimNotation                      orange none
" vimBracket                       orange none
" vimMapModKey                     orange none
" vimFuncSID                       fg3    none
" vimSetSep                        fg3    none
" vimSep                           fg3    none
" vimContinue                      fg3    none
" clojureKeyword                   blue   none
" clojureCond                      orange none
" clojureSpecial                   orange none
" clojureDefine                    orange none
" clojureFunc                      yellow none
" clojureRepeat                    yellow none
" clojureCharacter                 aqua   none
" clojureStringEscape              aqua   none
" clojureException                 red    none
" clojureRegexp                    aqua   none
" clojureRegexpEscape              aqua   none
" clojureRegexpCharClass           fg3    none    bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3    none
" clojureAnonArg                   yellow none
" clojureVariable                  blue   none
" clojureMacro                     orange none
" clojureMeta                      yellow none
" clojureDeref                     yellow none
" clojureQuote                     yellow none
" clojureUnquote                   yellow none
" cOperator                        purple none
" cStructure                       orange none
" pythonBuiltin                    orange none
" pythonBuiltinObj                 orange none
" pythonBuiltinFunc                orange none
" pythonFunction                   aqua   none
" pythonDecorator                  red    none
" pythonInclude                    blue   none
" pythonImport                     blue   none
" pythonRun                        blue   none
" pythonCoding                     blue   none
" pythonOperator                   red    none
" pythonException                  red    none
" pythonExceptions                 purple none
" pythonBoolean                    purple none
" pythonDot                        fg3    none
" pythonConditional                red    none
" pythonRepeat                     red    none
" pythonDottedName                 green  none    bold
" cssBraces                        blue   none
" cssFunctionName                  yellow none
" cssIdentifier                    orange none
" cssClassName                     green  none
" cssColor                         blue   none
" cssSelectorOp                    blue   none
" cssSelectorOp2                   blue   none
" cssImportant                     green  none
" cssVendor                        fg1    none
" cssTextProp                      aqua   none
" cssAnimationProp                 aqua   none
" cssUIProp                        yellow none
" cssTransformProp                 aqua   none
" cssTransitionProp                aqua   none
" cssPrintProp                     aqua   none
" cssPositioningProp               yellow none
" cssBoxProp                       aqua   none
" cssFontDescriptorProp            aqua   none
" cssFlexibleBoxProp               aqua   none
" cssBorderOutlineProp             aqua   none
" cssBackgroundProp                aqua   none
" cssMarginProp                    aqua   none
" cssListProp                      aqua   none
" cssTableProp                     aqua   none
" cssFontProp                      aqua   none
" cssPaddingProp                   aqua   none
" cssDimensionProp                 aqua   none
" cssRenderProp                    aqua   none
" cssColorProp                     aqua   none
" cssGeneratedContentProp          aqua   none
" javaScriptBraces                 fg1    none
" javaScriptFunction               aqua   none
" javaScriptIdentifier             red    none
" javaScriptMember                 blue   none
" javaScriptNumber                 purple none
" javaScriptNull                   purple none
" javaScriptParens                 fg3    none
" javascriptImport                 aqua   none
" javascriptExport                 aqua   none
" javascriptClassKeyword           aqua   none
" javascriptClassExtends           aqua   none
" javascriptDefault                aqua   none
" javascriptClassName              yellow none
" javascriptClassSuperName         yellow none
" javascriptGlobal                 yellow none
" javascriptEndColons              fg1    none
" javascriptFuncArg                fg1    none
" javascriptGlobalMethod           fg1    none
" javascriptNodeGlobal             fg1    none
" javascriptBOMWindowProp          fg1    none
" javascriptArrayMethod            fg1    none
" javascriptArrayStaticMethod      fg1    none
" javascriptCacheMethod            fg1    none
" javascriptDateMethod             fg1    none
" javascriptMathStaticMethod       fg1    none
" javascriptURLUtilsProp           fg1    none
" javascriptBOMNavigatorProp       fg1    none
" javascriptDOMDocMethod           fg1    none
" javascriptDOMDocProp             fg1    none
" javascriptBOMLocationMethod      fg1    none
" javascriptBOMWindowMethod        fg1    none
" javascriptStringMethod           fg1    none
" javascriptVariable               orange none
" javascriptIdentifier             orange none
" javascriptClassSuper             orange none
" javascriptFuncKeyword            aqua   none
" javascriptAsyncFunc              aqua   none
" javascriptClassStatic            orange none
" javascriptOperator               red    none
" javascriptForOperator            red    none
" javascriptYield                  red    none
" javascriptExceptions             red    none
" javascriptMessage                red    none
" javascriptTemplateSB             aqua   none
" javascriptTemplateSubstitution   fg1    none
" javascriptLabel                  fg1    none
" javascriptObjectLabel            fg1    none
" javascriptPropertyName           fg1    none
" javascriptLogicSymbols           fg1    none
" javascriptArrowFunc              yellow none
" javascriptDocParamName           fg4    none
" javascriptDocTags                fg4    none
" javascriptDocNotation            fg4    none
" javascriptDocParamType           fg4    none
" javascriptDocNamedParamType      fg4    none
" javascriptBrackets               fg1    none
" javascriptDOMElemAttrs           fg1    none
" javascriptDOMEventMethod         fg1    none
" javascriptDOMNodeMethod          fg1    none
" javascriptDOMStorageMethod       fg1    none
" javascriptHeadersMethod          fg1    none
" javascriptAsyncFuncKeyword       red    none
" javascriptAwaitFuncKeyword       red    none
" jsClassKeyword                   aqua   none
" jsExtendsKeyword                 aqua   none
" jsExportDefault                  aqua   none
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects              fg1    none
" jsGlobalObjects                  fg1    none
" jsFunction                       aqua   none
" jsFuncParens                     fg3    none
" jsParens                         fg3    none
" jsNull                           purple none
" jsUndefined                      purple none
" jsClassDefinition                yellow none
" typeScriptReserved               aqua   none
" typeScriptLabel                  aqua   none
" typeScriptFuncKeyword            aqua   none
" typeScriptIdentifier             orange none
" typeScriptBraces                 fg1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods            fg1    none
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects          fg1    none
" typeScriptParens                 fg3    none
" typeScriptOpSymbols              fg3    none
" typeScriptHtmlElemProperties     fg1    none
" typeScriptNull                   purple none
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             fg1    none
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                   fg1    none
" purescriptImportKeyword          aqua   none
" purescriptHidingKeyword          aqua   none
" purescriptAsKeyword              aqua   none
" purescriptStructure              aqua   none
" purescriptOperator               blue   none
" purescriptTypeVar                fg1    none
" purescriptConstructor            fg1    none
" purescriptFunction               fg1    none
" purescriptConditional            orange none
" purescriptBacktick               orange none
" coffeeExtendedOp                 fg3    none
" coffeeSpecialOp                  fg3    none
" coffeeCurly                      orange none
" coffeeParen                      fg3    none
" coffeeBracket                    orange none
" rubyStringDelimiter              green  none
" rubyInterpolationDelimiter       aqua   none
" objcTypeModifier                 red    none
" objcDirective                    blue   none
" goDirective                      aqua   none
" goConstants                      purple none
" goDeclaration                    red    none
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red    none
" luaFunction                      aqua   none
" luaTable                         orange none
" moonSpecialOp                    fg3    none
" moonExtendedOp                   fg3    none
" moonFunction                     fg3    none
" moonObject                       yellow none
" javaAnnotation                   blue   none
" javaDocTags                      aqua   none
" javaCommentTitle              -> vimCommentTitle
" javaParen                        fg3    none
" javaParen1                       fg3    none
" javaParen2                       fg3    none
" javaParen3                       fg3    none
" javaParen4                       fg3    none
" javaParen5                       fg3    none
" javaOperator                     orange none
" javaVarArg                       green  none
" elixirDocString               -> Comment
" elixirStringDelimiter            green  none
" elixirInterpolationDelimiter     aqua   none
" elixirModuleDeclaration          yellow none
" scalaNameDefinition              fg1    none
" scalaCaseFollowing               fg1    none
" scalaCapitalWord                 fg1    none
" scalaTypeExtension               fg1    none
" scalaKeyword                     red    none
" scalaKeywordModifier             red    none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       green  none    bold
" markdownH2                       green  none    bold
" markdownH3                       yellow none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" markdownCode                     aqua   none
" markdownCodeBlock                aqua   none
" markdownCodeDelimiter            aqua   none
" markdownBlockquote               grey   none
" markdownListMarker               grey   none
" markdownOrderedListMarker        grey   none
" markdownRule                     grey   none
" markdownHeadingRule              grey   none
" markdownUrlDelimiter             fg3    none
" markdownLinkDelimiter            fg3    none
" markdownLinkTextDelimiter        fg3    none
" markdownHeadingDelimiter         orange none
" markdownUrl                      purple none
" markdownUrlTitleDelimiter        green  none
" markdownLinkText                 grey   none    underline
" markdownIdDeclaration         -> markdownLinkText
" haskellType                      fg1    none
" haskellIdentifier                fg1    none
" haskellSeparator                 fg1    none
" haskellDelimiter                 fg4    none
" haskellOperators                 blue   none
" haskellBacktick                  orange none
" haskellStatement                 orange none
" haskellConditional               orange none
" haskellLet                       aqua   none
" haskellDefault                   aqua   none
" haskellWhere                     aqua   none
" haskellBottom                    aqua   none
" haskellBlockKeywords             aqua   none
" haskellImportKeywords            aqua   none
" haskellDeclKeyword               aqua   none
" haskellDeriving                  aqua   none
" haskellAssocType                 aqua   none
" haskellNumber                    purple none
" haskellPragma                    purple none
" haskellString                    green  none
" haskellChar                      green  none
" jsonKeyword                      green  none
" jsonQuote                        green  none
" jsonBraces                       fg1    none
" jsonString                       fg1    none
" Background: light
" Color: bg0 rgb(253, 244, 193) ~
" Color: bg1 rgb(235, 219, 178) ~
" Color: bg2 rgb(213, 196, 161) ~
" Color: bg3               rgb(189, 174, 147)    ~
" Color: bg4               rgb(168, 153, 132)    ~
" Color: fg0               rgb( 40,  40,  40)    ~
" Color: fg1               rgb( 60,  56,  54)    ~
" Color: fg2               rgb( 80,  56,  54)    ~
" Color: fg3               rgb(102,  92,  84)    ~
" Color: fg4               rgb(124, 111, 100)    ~
" Color: grey              rgb(146, 131, 116)    ~
" Color: red               rgb(157,   0,   6)    ~
" Color: green             rgb(121, 116,  14)    ~
" Color: yellow            rgb(181, 118,  20)    ~
" Color: blue              rgb(  7, 102, 120)    ~
" Color: purple            rgb(143,  63, 113)    ~
" Color: aqua              rgb( 66, 123,  88)    ~
" Color: orange            rgb(175,  58,   3)    ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   grey   none
"     SignColumn   none   none
"     VertSplit    bg3    none
"     Normal       fg1    bg0
"     CursorLineNr yellow bg1
"     FoldColumn   grey   bg1
"     SignColumn   none   bg1
"     VertSplit    bg3    bg0
" ColorColumn                      none   bg1
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none   bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none    bold
" EndOfBuffer                      bg0    none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           bg4    none
" MatchParen                       none   bg3     bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" NonText                          bg2    none
" Pmenu                            fg1    bg2
" PmenuSbar                        none   bg2
" PmenuSel                         bg2    blue    bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       bg2    none
" SpellBad                         none   none    undercurl s=blue
" SpellCap                         green  none    t=bold g=bold,italic
" SpellCap                         none   none    undercurl s=red
" SpellLocal                       none   none    undercurl s=aqua
" SpellRare                        none   none    undercurl s=purple
" StatusLine                       bg2    fg1     reverse
" StatusLineNC                     bg1    fg4     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           none   bg3     reverse
" Visual                           none   bg3
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Boolean                          purple none
" Character                        purple none
" Comment                          grey   none    g=italic
" Conditional                      red    none
" Constant                         purple none
" Define                           aqua   none
" Debug                            red    none
" Delimiter                        orange none
" Error                            red    bg0     bold,reverse
" Exception                        red    none
" Float                            purple none
" Function                         green  none    bold
" Identifier                       blue   none
" Ignore                           fg     none
" Include                          aqua   none
" Keyword                          red    none
" Label                            red    none
" Macro                            aqua   none
" Number                           purple none
" Operator                      -> Normal
" PreCondit                        aqua   none
" PreProc                          aqua   none
" Repeat                           red    none
" SpecialChar                      red    none
" SpecialComment                   red    none
" Statement                        red    none
" StorageClass                     orange none
" Special                          orange bg1
" String                           fg1    bg1
" Special                          orange none
" String                           green  none
" Structure                        aqua   none
" Tag                           -> Special
" Todo                             fg     bg0     t=bold g=bold,italic
" Type                             yellow none
" Typedef                          yellow none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" GruvboxFg0        fg0    none
" GruvboxFg1        fg1    none
" GruvboxFg2        fg2    none
" GruvboxFg3        fg3    none
" GruvboxFg4        fg4    none
" GruvboxGray       grey   none
" GruvboxBg0        bg0    none
" GruvboxBg1        bg1    none
" GruvboxBg2        bg2    none
" GruvboxBg3        bg3    none
" GruvboxBg4        bg4    none
" GruvboxRed        red    none
" GruvboxRedBold    red    none bold
" GruvboxGreen      green  none
" GruvboxGreenBold  green  none bold
" GruvboxYellow     yellow none
" GruvboxYellowBold yellow none bold
" GruvboxBlue       blue   none
" GruvboxBlueBold   blue   none bold
" GruvboxPurple     purple none
" GruvboxPurpleBold purple none bold
" GruvboxAqua       aqua   none
" GruvboxAquaBold   aqua   none bold
" GruvboxOrange     orange none
" GruvboxOrangeBold orange none bold
" GruvboxRedSign    red    bg1
" GruvboxGreenSign  green  bg1
" GruvboxYellowSign yellow bg1
" GruvboxBlueSign   blue   bg1
" GruvboxPurpleSign purple bg1
" GruvboxAquaSign   aqua   bg1
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg4    bg0     reverse
" InsertMode                       blue   bg0     reverse
" ReplaceMode                      aqua   bg0     reverse
" VisualMode                       orange bg0     reverse
" CommandMode                      purple bg0     reverse
" Warnings                         orange bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
" ALEError                         none   none    undercurl s=red
" ALEWarning                       none   none    undercurl s=red
" ALEInfo                          none   none    undercurl s=blue
" ALEErrorSign                     red    bg1
" ALEWarningSign                   yellow bg1
" ALEInfoSign                      blue   bg1
" BufTabLineCurrent                bg0    fg4
" BufTabLineActive                 fg4    bg2
" BufTabLineHidden                 bg4    bg1
" BufTabLineFill                   bg0    bg0
" CtrlPMatch                       yellow none
" CtrlPNoEntries                   red    none
" CtrlPPrtBase                     bg2    none
" CtrlPPrtCursor                   blue   none
" CtrlPLinePre                     bg2    none
" CtrlPMode1                       blue   bg2     bold
" CtrlPMode2                       bg0    blue    bold
" CtrlPStats                       fg4    bg2     bold
" DirvishPathTail                  aqua   none
" DirvishArg                       yellow none
" EasyMotionTarget              -> Search
" EasyMotionShade               -> Comment
" gitcommitSelectedFile            green  none
" gitcommitDiscardedFile           red    none
" GitGutterAdd                     green  bg1
" GitGutterChange                  aqua   bg1
" GitGutterDelete                  red    bg1
" GitGutterChangeDelete            aqua   bg1
" IndentGuidesOdd  bg0 bg2 reverse
" IndentGuidesEven bg0 bg1 reverse
" IndentGuidesOdd  bg0 bg2
" IndentGuidesEven bg0 bg1
" NERDTreeDir                      aqua   none
" NERDTreeDirSlash                 aqua   none
" NERDTreeOpenable                 orange none
" NERDTreeClosable                 orange none
" NERDTreeFile                     fg1    none
" NERDTreeExecFile                 yellow none
" NERDTreeUp                       grey   none
" NERDTreeCWD                      green  none
" NERDTreeHelp                     fg1    none
" NERDTreeToggleOn                 green  none
" NERDTreeToggleOff                red    none
" netrwDir                         aqua   none
" netrwClassify                    aqua   none
" netrwLink                        grey   none
" netrwSymLink                     fg1    none
" netrwExe                         yellow none
" netrwComment                     grey   none
" netrwList                        blue   none
" netrwHelpCmd                     aqua   none
" netrwCmdSep                      fg3    none
" netrwVersion                     green  none
" ShowMarksHLl                     blue   bg1
" ShowMarksHLu                     blue   bg1
" ShowMarksHLo                     blue   bg1
" ShowMarksHLm                     blue   bg1
" SignifySignAdd                   green  none
" SignifySignChange                aqua   none
" SignifySignDelete                red    none
" SignatureMarkText                blue   bg1
" SignatureMarkerText              purple bg1
" StartifyBracket                  fg3    none
" StartifyFile                     fg1    none
" StartifyNumber                   blue   none
" StartifyPath                     grey   none
" StartifySlash                    grey   none
" StartifySection                  yellow none
" StartifySpecial                  bg2    none
" StartifyHeader                   orange none
" StartifyFooter                   bg2    none
" SyntasticError                   none   none    undercurl s=red
" SyntasticWarning                 none   none    undercurl s=yellow
" SyntasticErrorSign               red    bg1
" SyntasticWarningSign             yellow bg1
" multiple_cursors_cursor          none   none    reverse
" multiple_cursors_visual          none   bg2
" diffAdded                        green  none
" diffRemoved                      red    none
" diffChanged                      aqua   none
" diffFile                         orange none
" diffNewFile                      yellow none
" diffLine                         blue   none
" htmlTag                          blue   none
" htmlEndTag                       blue   none
" htmlTagName                      aqua   none    bold
" htmlArg                          aqua   none
" htmlScriptTag                    purple none
" htmlTagN                         fg1    none
" htmlSpecialTagName               aqua   none    bold
" htmlLink                         fg4    none    underline
" htmlSpecialChar                  orange none
" htmlBold                         fg     bg0     bold
" htmlBoldUnderline                fg     bg0     bold,underline
" htmlBoldItalic                   fg     bg0     bold,italic
" htmlBoldUnderlineItalic          fg     bg0     bold,underline,italic
" htmlUnderline                    fg     bg0     underline
" htmlUnderlineItalic              fg     bg0     underline,italic
" htmlItalic                       fg     bg0     italic
" xmlTag                           blue   none
" xmlEndTag                        blue   none
" xmlTagName                       blue   none
" xmlEqual                         blue   none
" docbkKeyword                     aqua   none    bold
" xmlDocTypeDecl                   grey   none
" xmlDocTypeKeyword                purple none
" xmlCdataStart                    grey   none
" xmlCdataCdata                    purple none
" dtdFunction                      grey   none
" dtdTagName                       purple none
" xmlAttrib                        aqua   none
" xmlProcessingDelim               grey   none
" dtdParamEntityPunct              grey   none
" dtdParamEntityDPunct             grey   none
" xmlAttribPunct                   grey   none
" xmlEntity                        orange none
" xmlEntityPunct                   orange none
" vimCommentTitle                  fg4    none    bold
" vimNotation                      orange none
" vimBracket                       orange none
" vimMapModKey                     orange none
" vimFuncSID                       fg3    none
" vimSetSep                        fg3    none
" vimSep                           fg3    none
" vimContinue                      fg3    none
" clojureKeyword                   blue   none
" clojureCond                      orange none
" clojureSpecial                   orange none
" clojureDefine                    orange none
" clojureFunc                      yellow none
" clojureRepeat                    yellow none
" clojureCharacter                 aqua   none
" clojureStringEscape              aqua   none
" clojureException                 red    none
" clojureRegexp                    aqua   none
" clojureRegexpEscape              aqua   none
" clojureRegexpCharClass           fg3    none    bold
" clojureRegexpMod              -> clojureRegexpCharClass
" clojureRegexpQuantifier       -> clojureRegexpCharClass
" clojureParen                     fg3    none
" clojureAnonArg                   yellow none
" clojureVariable                  blue   none
" clojureMacro                     orange none
" clojureMeta                      yellow none
" clojureDeref                     yellow none
" clojureQuote                     yellow none
" clojureUnquote                   yellow none
" cOperator                        purple none
" cStructure                       orange none
" pythonBuiltin                    orange none
" pythonBuiltinObj                 orange none
" pythonBuiltinFunc                orange none
" pythonFunction                   aqua   none
" pythonDecorator                  red    none
" pythonInclude                    blue   none
" pythonImport                     blue   none
" pythonRun                        blue   none
" pythonCoding                     blue   none
" pythonOperator                   red    none
" pythonException                  red    none
" pythonExceptions                 purple none
" pythonBoolean                    purple none
" pythonDot                        fg3    none
" pythonConditional                red    none
" pythonRepeat                     red    none
" pythonDottedName                 green  none    bold
" cssBraces                        blue   none
" cssFunctionName                  yellow none
" cssIdentifier                    orange none
" cssClassName                     green  none
" cssColor                         blue   none
" cssSelectorOp                    blue   none
" cssSelectorOp2                   blue   none
" cssImportant                     green  none
" cssVendor                        fg1    none
" cssTextProp                      aqua   none
" cssAnimationProp                 aqua   none
" cssUIProp                        yellow none
" cssTransformProp                 aqua   none
" cssTransitionProp                aqua   none
" cssPrintProp                     aqua   none
" cssPositioningProp               yellow none
" cssBoxProp                       aqua   none
" cssFontDescriptorProp            aqua   none
" cssFlexibleBoxProp               aqua   none
" cssBorderOutlineProp             aqua   none
" cssBackgroundProp                aqua   none
" cssMarginProp                    aqua   none
" cssListProp                      aqua   none
" cssTableProp                     aqua   none
" cssFontProp                      aqua   none
" cssPaddingProp                   aqua   none
" cssDimensionProp                 aqua   none
" cssRenderProp                    aqua   none
" cssColorProp                     aqua   none
" cssGeneratedContentProp          aqua   none
" javaScriptBraces                 fg1    none
" javaScriptFunction               aqua   none
" javaScriptIdentifier             red    none
" javaScriptMember                 blue   none
" javaScriptNumber                 purple none
" javaScriptNull                   purple none
" javaScriptParens                 fg3    none
" javascriptImport                 aqua   none
" javascriptExport                 aqua   none
" javascriptClassKeyword           aqua   none
" javascriptClassExtends           aqua   none
" javascriptDefault                aqua   none
" javascriptClassName              yellow none
" javascriptClassSuperName         yellow none
" javascriptGlobal                 yellow none
" javascriptEndColons              fg1    none
" javascriptFuncArg                fg1    none
" javascriptGlobalMethod           fg1    none
" javascriptNodeGlobal             fg1    none
" javascriptBOMWindowProp          fg1    none
" javascriptArrayMethod            fg1    none
" javascriptArrayStaticMethod      fg1    none
" javascriptCacheMethod            fg1    none
" javascriptDateMethod             fg1    none
" javascriptMathStaticMethod       fg1    none
" javascriptURLUtilsProp           fg1    none
" javascriptBOMNavigatorProp       fg1    none
" javascriptDOMDocMethod           fg1    none
" javascriptDOMDocProp             fg1    none
" javascriptBOMLocationMethod      fg1    none
" javascriptBOMWindowMethod        fg1    none
" javascriptStringMethod           fg1    none
" javascriptVariable               orange none
" javascriptIdentifier             orange none
" javascriptClassSuper             orange none
" javascriptFuncKeyword            aqua   none
" javascriptAsyncFunc              aqua   none
" javascriptClassStatic            orange none
" javascriptOperator               red    none
" javascriptForOperator            red    none
" javascriptYield                  red    none
" javascriptExceptions             red    none
" javascriptMessage                red    none
" javascriptTemplateSB             aqua   none
" javascriptTemplateSubstitution   fg1    none
" javascriptLabel                  fg1    none
" javascriptObjectLabel            fg1    none
" javascriptPropertyName           fg1    none
" javascriptLogicSymbols           fg1    none
" javascriptArrowFunc              yellow none
" javascriptDocParamName           fg4    none
" javascriptDocTags                fg4    none
" javascriptDocNotation            fg4    none
" javascriptDocParamType           fg4    none
" javascriptDocNamedParamType      fg4    none
" javascriptBrackets               fg1    none
" javascriptDOMElemAttrs           fg1    none
" javascriptDOMEventMethod         fg1    none
" javascriptDOMNodeMethod          fg1    none
" javascriptDOMStorageMethod       fg1    none
" javascriptHeadersMethod          fg1    none
" javascriptAsyncFuncKeyword       red    none
" javascriptAwaitFuncKeyword       red    none
" jsClassKeyword                   aqua   none
" jsExtendsKeyword                 aqua   none
" jsExportDefault                  aqua   none
" jsTemplateBraces                 aqua   none
" jsGlobalNodeObjects              fg1    none
" jsGlobalObjects                  fg1    none
" jsFunction                       aqua   none
" jsFuncParens                     fg3    none
" jsParens                         fg3    none
" jsNull                           purple none
" jsUndefined                      purple none
" jsClassDefinition                yellow none
" typeScriptReserved               aqua   none
" typeScriptLabel                  aqua   none
" typeScriptFuncKeyword            aqua   none
" typeScriptIdentifier             orange none
" typeScriptBraces                 fg1    none
" typeScriptEndColons              fg1    none
" typeScriptDOMObjects             fg1    none
" typeScriptAjaxMethods            fg1    none
" typeScriptLogicSymbols           fg1    none
" typeScriptDocSeeTag           -> Comment
" typeScriptDocParam            -> Comment
" typeScriptDocTags             -> vimCommentTitle
" typeScriptGlobalObjects          fg1    none
" typeScriptParens                 fg3    none
" typeScriptOpSymbols              fg3    none
" typeScriptHtmlElemProperties     fg1    none
" typeScriptNull                   purple none
" typeScriptInterpolationDelimiter aqua   none
" purescriptModuleKeyword          aqua   none
" purescriptModuleName             fg1    none
" purescriptWhere                  aqua   none
" purescriptDelimiter              fg4    none
" purescriptType                   fg1    none
" purescriptImportKeyword          aqua   none
" purescriptHidingKeyword          aqua   none
" purescriptAsKeyword              aqua   none
" purescriptStructure              aqua   none
" purescriptOperator               blue   none
" purescriptTypeVar                fg1    none
" purescriptConstructor            fg1    none
" purescriptFunction               fg1    none
" purescriptConditional            orange none
" purescriptBacktick               orange none
" coffeeExtendedOp                 fg3    none
" coffeeSpecialOp                  fg3    none
" coffeeCurly                      orange none
" coffeeParen                      fg3    none
" coffeeBracket                    orange none
" rubyStringDelimiter              green  none
" rubyInterpolationDelimiter       aqua   none
" objcTypeModifier                 red    none
" objcDirective                    blue   none
" goDirective                      aqua   none
" goConstants                      purple none
" goDeclaration                    red    none
" goDeclType                       blue   none
" goBuiltins                       orange none
" luaIn                            red    none
" luaFunction                      aqua   none
" luaTable                         orange none
" moonSpecialOp                    fg3    none
" moonExtendedOp                   fg3    none
" moonFunction                     fg3    none
" moonObject                       yellow none
" javaAnnotation                   blue   none
" javaDocTags                      aqua   none
" javaCommentTitle              -> vimCommentTitle
" javaParen                        fg3    none
" javaParen1                       fg3    none
" javaParen2                       fg3    none
" javaParen3                       fg3    none
" javaParen4                       fg3    none
" javaParen5                       fg3    none
" javaOperator                     orange none
" javaVarArg                       green  none
" elixirDocString               -> Comment
" elixirStringDelimiter            green  none
" elixirInterpolationDelimiter     aqua   none
" elixirModuleDeclaration          yellow none
" scalaNameDefinition              fg1    none
" scalaCaseFollowing               fg1    none
" scalaCapitalWord                 fg1    none
" scalaTypeExtension               fg1    none
" scalaKeyword                     red    none
" scalaKeywordModifier             red    none
" scalaSpecial                     aqua   none
" scalaOperator                    fg1    none
" scalaTypeDeclaration             yellow none
" scalaTypeTypePostDeclaration     yellow none
" scalaInstanceDeclaration         fg1    none
" scalaInterpolation               aqua   none
" markdownItalic                   fg3    none    italic
" markdownH1                       green  none    bold
" markdownH2                       green  none    bold
" markdownH3                       yellow none    bold
" markdownH4                       yellow none    bold
" markdownH5                       yellow none
" markdownH6                       yellow none
" markdownCode                     aqua   none
" markdownCodeBlock                aqua   none
" markdownCodeDelimiter            aqua   none
" markdownBlockquote               grey   none
" markdownListMarker               grey   none
" markdownOrderedListMarker        grey   none
" markdownRule                     grey   none
" markdownHeadingRule              grey   none
" markdownUrlDelimiter             fg3    none
" markdownLinkDelimiter            fg3    none
" markdownLinkTextDelimiter        fg3    none
" markdownHeadingDelimiter         orange none
" markdownUrl                      purple none
" markdownUrlTitleDelimiter        green  none
" markdownLinkText                 grey   none    underline
" markdownIdDeclaration         -> markdownLinkText
" haskellType                      fg1    none
" haskellIdentifier                fg1    none
" haskellSeparator                 fg1    none
" haskellDelimiter                 fg4    none
" haskellOperators                 blue   none
" haskellBacktick                  orange none
" haskellStatement                 orange none
" haskellConditional               orange none
" haskellLet                       aqua   none
" haskellDefault                   aqua   none
" haskellWhere                     aqua   none
" haskellBottom                    aqua   none
" haskellBlockKeywords             aqua   none
" haskellImportKeywords            aqua   none
" haskellDeclKeyword               aqua   none
" haskellDeriving                  aqua   none
" haskellAssocType                 aqua   none
" haskellNumber                    purple none
" haskellPragma                    purple none
" haskellString                    green  none
" haskellChar                      green  none
" jsonKeyword                      green  none
" jsonQuote                        green  none
" jsonBraces                       fg1    none
" jsonString                       fg1    none