return {
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,
    opts = {
      style = "dark",
      transparent = true,
      enable_italics = false,
      styles = {
        string = { italic = false },
        keywords = { italic = false },
        variable = { italic = false },
        variables = { italic = false },
        comments = { italic = false },
        functions = { italic = false },
      },
    },
    config = function(_, opts)
      vim.o.termguicolors = true
      require("NeoSolarized").setup(opts)
      vim.cmd.colorscheme("NeoSolarized")
    end,
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
            { "<leader>sA", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
          },
        },
      },
    },
}
