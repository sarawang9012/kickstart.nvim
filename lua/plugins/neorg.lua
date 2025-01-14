return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local neorg = require 'neorg'
    neorg.setup {
      load = {
        ['core.defaults'] = {},
        ['core.summary'] = {},
        ['core.concealer'] = {
          config = {
            folds = false,
            icon_preset = 'diamond',
          },
        },
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp',
            name = '[Neorg]',
          },
        },
        ['core.dirman'] = {
          config = {
            default_workspace = 'personal',
            index = 'inbox.norg',
            workspaces = {
              notes = '~/notes',
              personal = '~/personal',
              work = '~/work',
            },
          },
        },
      },
    }
    vim.cmd 'set conceallevel=2'
    vim.g.maplocalleader = ','
  end,
}
