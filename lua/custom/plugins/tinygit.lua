-- tinygit
-- https://github.com/windwp/nvim-autopairs

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
    opts = {
      on_attach = function()
        require('tinygit').smartCommit { pushIfClean = false } -- options default to `false`
        vim.keymap.set('n', '<leader>hc', function()
          require('tinygit').smartCommit()
        end, { desc = 'Tinygit - SmartCommit' })
        vim.keymap.set('n', '<leader>hp', function()
          require('tinygit').push {}
        end, { desc = 'Tinygit - Push' })
      end,
    },
  },
}
