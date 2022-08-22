
"Mario uwu dotfiles u~u 
set hidden
set list
set listchars=tab:>\ ,trail:·
set number
set termguicolors
set clipboard=unnamedplus
"Tabs config
set tabstop=4
set shiftwidth=4
set expandtab

"Arduino commands 
let filename = @%

command ArduinoCompile terminal arduino-cli compile --fqbn arduino:avr:uno %:r 
command ArduinoUpload terminal arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno %:r -v 
command ArduinoSerial terminal putty -serial /dev/ttyACM0 & 

"PLUGINS
call plug#begin('~/local/share/nvim/plugged')

"Plug 'EdenEast/nightfox.nvim'
Plug 'sudar/vim-arduino-syntax'
Plug 'liuchengxu/vista.vim'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ojroques/nvim-buildme'
Plug 'airblade/vim-rooter'
Plug 'catppuccin/nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()

packadd! vimspector
let g:vimspector_enable_mappings = 'HUMAN'

colorscheme gruvbox

let g:airline_theme='gruvbox'

"Plugins config files
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/vim_rooter.vim
source ~/.config/nvim/plugins/hexokinase_config.vim
