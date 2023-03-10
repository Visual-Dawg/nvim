vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'ggandor/leap.nvim'

    use 'tpope/vim-repeat'

end)
