return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dask",
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
            { "<leader>/", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
          },
        },
      },
    },
}
