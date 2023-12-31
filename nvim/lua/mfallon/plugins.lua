local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer, close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "lunarvim/colorschemes"
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "ibhagwan/fzf-lua"
    use "tpope/vim-commentary"
    use "christoomey/vim-tmux-navigator"
    use {"nvim-treesitter/nvim-treesitter", run=':TSUpdate'}
    use "nvim-treesitter/nvim-treesitter-context"
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "williamboman/mason-lspconfig.nvim"
    use "williamboman/mason.nvim"
    use "neovim/nvim-lspconfig"
    use "lewis6991/gitsigns.nvim"
    use "junegunn/vim-easy-align"
    use "nvim-lualine/lualine.nvim"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

