--[[
-- Setup initial configuration, Malhar
-- 
-- Primarily just download and execute lazy.nvim
--]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
vim.opt.rtp:prepend(lazypath)

-- Set up lazy, and load my `lua/custom/plugins/` folder
require('lazy').setup({ import = 'plugins' }, {
  change_detection = {
    notify = false,
  },
})

-- Loading keymaps, options and terminal options
require 'custom'
vim.opt.formatoptions:remove 'o'

-- Templates for different filetypes if I want to set
local function load_template(ext)
  return string.format('0r ~/.config/nvim/templates/%s_template.tpl', ext)
end

vim.api.nvim_create_autocmd({ 'BufNewFile' }, {
  pattern = {
    '*.cpp',
    -- '*.java'
  }, -- Add more patterns as needed
  callback = function()
    local ext = vim.fn.expand '%:e'
    vim.cmd(load_template(ext))
  end,
})
