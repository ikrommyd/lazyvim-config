return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
  {
    "github/copilot.vim",
    init = function()
      vim.g.copilot_enabled = false
    end,
  },
  {
   "nvim-telescope/telescope.nvim",
     dependencies = {
       {
         "nvim-telescope/telescope-live-grep-args.nvim",
           event = "VeryLazy",
           config = function(_, _)
             require("lazyvim.util").on_load("telescope.nvim", function()
             require("telescope").load_extension("live_grep_args")
             end)
           end,
          keys = {
            { "<leader>sA", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
          },
        },
      },
    },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
