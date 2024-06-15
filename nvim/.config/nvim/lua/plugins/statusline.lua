return {
  'nvim-lualine/lualine.nvim',
  -- lazy = true,
  config = function()
    local colors = {
      blue = '#80a0ff',
      cyan = '#79dac8',
      black = '#080808',
      white = '#c6c6c6',
      red = '#ff5189',
      violet = '#d183e8',
      grey = '#303030',
      green = '#00ff00',
      slate_purple = '#6A5ACD',
    }

    local malhars_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.black, bg = colors.slate_purple },
        c = { fg = colors.white, bg = colors.grey },
      },

      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.green } },
      command = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    require('lualine').setup {
      options = {
        theme = malhars_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
        lualine_y = { 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
