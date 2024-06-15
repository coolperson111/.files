return {
  'github/copilot.vim',
  lazy = true,
  config = function()
    -- disable copilot by default
    --
    -- b:copilot_enabled       Set to v:false to disable GitHub Copilot for the
    --                         current buffer.  Or set to v:true to force enabling
    --                         it, overriding g:copilot_filetypes.
    vim.cmd 'Copilot disable'

    local copilot_on = false

    -- function to toggle copilot
    vim.api.nvim_create_user_command('CopilotToggle', function()
      if copilot_on then
        vim.cmd 'Copilot disable'
        print 'Copilot OFF'
      else
        vim.cmd 'Copilot enable'
        print 'Copilot ON'
      end
      copilot_on = not copilot_on
    end, { nargs = 0 })

    -- keymap to toggle copilot
    vim.keymap.set('n', '<M-\\>', ':CopilotToggle<CR>', { noremap = true, silent = true })

  end,
}
