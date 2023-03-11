vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'ggandor/leap.nvim'

    use 'tpope/vim-repeat'

    use 'sainnhe/gruvbox-material'

    use 'tpope/vim-surround'

    use 'bkad/CamelCaseMotion'

    use 'mg979/vim-visual-multi'

end)

