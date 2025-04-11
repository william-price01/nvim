return {
  "folke/snacks.nvim",
  opts = {
    picker = {},
    explorer = {},
    }, 
    keys = {
	{"<leader>sf", function() Snacks.picker.smart() end, desc="leader [s]earch [files]"},
	{"<leader>sg", function() Snacks.picker.grep() end, desc="leader [s]earch [g]rep"}
    },
}
