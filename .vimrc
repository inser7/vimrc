" .vimrc
" отключаем совместимость с VI
set nocompatible

" русская раскладка в utf-8 (переключать ctrl-6)
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

" русская раскладка в utf-8 (системный переключатель)
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]

map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '

map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }

map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "

map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

" Хранить 50 позиций в истории команд
set history=50

" Мышь всегда доступна
set mouse=a

set background=dark

" Подсветка синтаксиса
syntax on

" Включить подсветку невидимых символов
set list

" Настройка подсветки невидимых символов
set listchars=tab:·\ ,trail:· 

" Включить номера строк
set nu

" Количество строк вокруг курсора
set scrolloff=3

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрывать указатель мыши, когда печатаем
set mousehide

" Регистро-независимый поиск, если не все символы в верхнем регистре
" Глючит с Omni Completion
"set ignorecase
set smartcase

" При поиске помечать все найденные строки
set hlsearch

" При поиске перескакивать на найденный текст в процессе набора строки
set incsearch

" Величина отступа
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" Автоотступы
set autoindent

" сворачивание кода по отступам
" set foldmethod=indent

" Делаем видимой колонку сворачивания кода
" set foldcolumn=2
" убираем строчки "-----" в фолдингах и "|" в вертикальных разделителях окон:
set fillchars=vert:\ ,fold:\ 

" Закрывать фолдинги автоматически
" set foldclose=all

" максимальное количество вкладок
set tabpagemax=99

" либо отключаем создание резервных копий, либо перенаправляем
set nobackup
"set backup
"set backupdir=$HOME/.vim/backups
set directory=$HOME/.vim/temp

" Statusline
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set laststatus=2

" Включаем подсветку синтаксиса
syntax on

" Включаем filetype плагин.
filetype plugin on
if has("autocmd")
    autocmd BufNewFile,Bufread *.php,*.module,*.install set filetype=php
    autocmd BufNewFile,Bufread *.tpl set filetype=smarty
    autocmd BufNewFile,Bufread *.less set filetype=less
    " | set softtabstop=2 | set shiftwidth=2 | set tabstop=2
endif

let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
    \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabClosePreviewOnPopupClose = 1

" Включаем Omni Completion
if has("autocmd") && exists("+omnifunc")
    autocmd FileType smarty set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType less set omnifunc=csscomplete#CompleteCSS
    autocmd FileType *
        \ if &omnifunc != '' |
        \   call SuperTabChain(&omnifunc, "<c-p>") |
        \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
        \ endif
endif

"Устанавливаем клавиатурные сокращения

" Копирование в системный буфер по С-С
vmap <C-C> "+yi
" Вставка из системного буфера обмена по C-V
imap <C-V> <esc>"+gPi

" Вызывать помощь только через :help
nmap <F1> <esc>
vmap <F1> <esc>
imap <F1> <esc>

" Быстрое сохранение по <F2>
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" Сохранить все открытые буферы по <F3>
nmap <F3> :wa<cr>
vmap <F3> <esc>:wa<cr>i
imap <F3> <esc>:wa<cr>i

" Выход по <F10>
nmap <F10> :q!<cr>
vmap <F10> <esc>:q!<cr>i
imap <F10> <esc>:q!<cr>i

" Номера строк по <F11>
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>

" Новая вкладка
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>

" Закрыть вкладку
nmap <C-q> :tabclose<cr>
imap <C-q> <ESC>:tabclose<cr>

" Перейти к предыдущей вкладке
map <S-tab> :tabprevious<cr>
nmap <S-tab> :tabprevious<cr>
imap <S-tab> <ESC>:tabprevious<cr>i

" Перейти к следующей вкладке
map <C-tab> :tabnext<cr>
nmap <C-tab> :tabnext<cr>
imap <C-tab> <ESC>:tabnext<cr>i

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" Выключаем режим замены
imap <Ins> <Esc>i

" Пара для [
" imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" Кодировки
" <F7> EOL format (dos <CR><NL>,unix <NL>,mac <CR>)
set  wildmenu
set  wcm=<Tab>
menu EOL.unix :set fileformat=unix<CR>
menu EOL.dos  :set fileformat=dos<CR>
menu EOL.mac  :set fileformat=mac<CR>
menu EOL.win2unix :%s /\r\n/\r/g<CR>
map  <F7> :emenu EOL.<Tab>

" <F8> Смена кодировки
set wildmenu 
set wcm=<Tab> 
menu ViewEnc.koi8-r :e ++enc=8bit-koi8-r<CR> 
menu ViewEnc.windows-1251 :e ++enc=8bit-cp1251<CR>
menu ViewEnc.ibm-866 :e ++enc=8bit-ibm866<CR> 
menu ViewEnc.utf-8 :e ++enc=2byte-utf-8 <CR> 
map <F8> :emenu ViewEnc.<TAB>

" <Shift+F8> Конвертация
set  wildmenu 
set  wcm=<Tab> 
menu SetEnc.cp1251    :set fenc=cp1251<CR> 
menu SetEnc.koi8-r    :set fenc=koi8-r<CR> 
menu SetEnc.cp866     :set fenc=ibm866<CR> 
menu SetEnc.utf-8     :set fenc=utf-8<CR> 
map  <S-F8> :emenu SetEnc.<TAB>

" все файлы, начинающиеся с !#/bin/sh или чего-то подобного 
" автоматически будут сделаны исполняемыми
function ModeChange()
  if getline(1) =~ "^#!"
    if getline(1) =~ "/bin/"
      silent !chmod a+x <afile>
    endif
  endif
endfunction
au BufWritePost * call ModeChange()
