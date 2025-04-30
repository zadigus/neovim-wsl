return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            win = {
              list = {
                keys = {
                  ["O"] = { { "pick_win", "jump" }, mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
  },
}
