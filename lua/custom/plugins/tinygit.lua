-- tinygit
-- https://github.com/chrisgrieser/nvim-tinygit

return {
  {
    'chrisgrieser/nvim-tinygit',
    ft = { 'git_rebase', 'gitcommit' }, -- so ftplugins are loaded
    dependencies = {
      'stevearc/dressing.nvim',
      'nvim-telescope/telescope.nvim', -- either telescope or fzf-lua
      'ibhagwan/fzf-lua',
      'rcarriga/nvim-notify', -- optional, but will lack some features without it
    },
    keys = {
      {
        '<leader>gc',
        function()
          require('tinygit').smartCommit()
        end,
        desc = 'Tiny[G]it Smart[C]ommit',
      },
      {
        '<leader>gp',
        function()
          require('tinygit').push {}
        end,
        desc = 'Tiny[G]it [P]ush',
      },
      desc = 'Tiny[G]it',
      -- { '<down>', '<cmd>echo "Use j to move!!"<CR>', desc = "Jannie's command" },
    },
    init = function()
      print 'Hello from tinygit init'
    end,
    config = function()
      print 'Hello from tinygit config'
      require('tinygit').setup()
    end,
  },
}
