return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "hyprlang",
        "rasi",
        "jsonc",
        "bash",
        "css",
        "scss",
      })
      vim.filetype.add({
        extension = { rasi = "rasi" },
        pattern = {
          [".*/waybar/config"] = "jsonc",
          [".*/waybar/*.css"] = "scss",
          [".*/hypr/.*%.conf"] = "hyprlang",
        },
      })

      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "fladson/vim-kitty",
    ft = "kitty",
    tag = "v1.1", -- You can select a tagged version
  },
}
