-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
    vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
    vim.g.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'} -- customize lazygit popup window border characters
    vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
    vim.g.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

    -- Keymaps
    vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
    vim.keymap.set("n", "<leader>gc", "<cmd>LazyGitConfig<cr>", { desc = "LazyGit Config" })
  end,
}
