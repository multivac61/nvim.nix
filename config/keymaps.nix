{
  config = {
    keymaps = [
      {
        key = "kj";
        action = "<Esc>";
        options.desc = "Escape";
        mode = [ "i" ];
      }
      {
        key = "jk";
        action = "<Esc>";
        options.desc = "Escape";
        mode = [ "i" ];
      }
      {
        key = "jj";
        action = "<Esc>";
        options.desc = "Escape";
        mode = [ "i" ];
      }
      {
        key = "U";
        action = "<C-r>";
        options.desc = "Undo";
        mode = [ "n" ];
      }
      {
        key = "<C-z>";
        action = "<Esc>ui";
        options.desc = "Undo in Insert Mode";
        mode = [ "i" ];
      }
      {
        key = "<C-x>";
        action = "<C-w>q";
        options.desc = "Close window";
        mode = [ "n" ];
      }
      {
        key = "<leader>/";
        action = ''
          function()
            require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
          end
        '';
        lua = true;
        options.desc = "Toggle comment line";
        mode = [ "n" ];
      }
      {
        key = "<leader>/";
        action = ''
          <esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())
        '';
        options.desc = "Toggle comment for selection";
        mode = [ "v" ];
      }
      {
        key = "<C-s>";
        action = ":w<CR>";
        options.desc = "Save";
        mode = [ "n" ];
      }
      {
        action = "'_dP";
        key = "<leader>p";
        options = {
          desc = "Paste without updating buffer";
        };
        mode = [
          "v"
        ];
      }
      {
        action = ">gv";
        key = ">";
        options.desc = "Stay in visual mode during outdent";
        mode = [
          "v"
          "x"
        ];
      }
      {
        action = "<gv";
        key = "<";
        options.desc = "Stay in visual mode during indent";
        mode = [
          "v"
          "x"
        ];
      }
      {
        key = "r";
        action = "y:%s/<C-r>0/";
        options.desc = "Replace word under cursor";
        mode = [ "v" ];
      }
      {
        key = "<C-Up>";
        action = ":resize -2<CR>";
        options.desc = "Resize up";
        mode = [ "n" ];
      }
      {
        key = "<C-Down>";
        action = ":resize +2<CR>";
        options.desc = "Resize down";
        mode = [ "n" ];
      }
      {
        key = "<C-Left>";
        action = ":vertical resize -2<CR>";
        options.desc = "Resize left";
        mode = [ "n" ];
      }
      {
        key = "<C-Up>";
        action = ":vertical resize +2<CR>";
        options.desc = "Resize right";
        mode = [ "n" ];
      }
      {
        key = "<leader>sv";
        action = "<C-w>v";
        options.desc = "Vertical split";
        mode = [ "n" ];
      }
      {
        key = "<leader>sh";
        action = "<C-w>s";
        options.desc = "Horizontal split";
        mode = [ "n" ];
      }
      {
        key = "<leader><tab>n";
        action = "<cmd>tabnew<CR>";
        options.desc = "New tab";
        mode = [ "n" ];
      }
      {
        key = "<leader><tab>x";
        action = "<cmd>tabclose<CR>";
        options.desc = "Close tab";
        mode = [ "n" ];
      }
      {
        key = "[t";
        action = "<cmd>tabprevious<CR>";
        options.desc = "Prev tab";
        mode = [ "n" ];
      }
      {
        key = "]t";
        action = "<cmd>tabnext<CR>";
        options.desc = "Next tab";
        mode = [ "n" ];
      }
      {
        key = "<leader>r";
        action = "*:%s//";
        options.desc = "Replace under cursor";
        mode = [ "n" ];
      }
      {
        key = "p";
        action = "\"_dP";
        options.desc = "Better paste";
        mode = [ "v" ];
      }
      {
        key = "s";
        action = "function() require('flash').jump() end";
        lua = true;
        options.desc = "Run flash";
        mode = [ "n" "x" ];
      }
      {
        key = "S";
        action = "function() require('flash').treesitter() end";
        lua = true;
        options.desc = "Run flash treesitter";
        mode = [ "n" "x" ];
      }
      {
        key = "<C-d>";
        action = "<C-d>zz";
        options.desc = "Half-page jump down";
        mode = [ "n" ];
      }
      {
        key = "<C-u>";
        action = "<C-u>zz";
        options.desc = "Half-page jump up";
        mode = [ "n" ];
      }
      {
        key = "W";
        action = ":noautocmd w<CR>";
        options.desc = "Write without formatting";
        mode = [ "n" ];
      }
      {
        key = "<leader>R";
        action = ":Spectre<CR>";
        options.desc = "Spectre";
        mode = [ "n" ];
      }
      {
        key = "<leader>D";
        action = "ggVGd";
        options.desc = "Blank out file";
        mode = [ "n" ];
      }
      {
        key = "<C-Q>";
        action = "<cmd>qa!<CR>";
        options.desc = "Exit";
        mode = [ "n" ];
      }
      {
        key = "n";
        action = "nzz";
        options.desc = "Recenter search";
        mode = [ "n" ];
      }
      {
        key = "N";
        action = "Nzz";
        options.desc = "Recenter search";
        mode = [ "n" ];
      }
      {
        key = "<S-Up>";
        action = ":resize +2<CR>";
        options.desc = "Increase vertical window size";
        mode = [ "n" ];
      }
      {
        key = "<S-Down>";
        action = ":resize -2<CR>";
        options.desc = "Decrease vertical window size";
        mode = [ "n" ];
      }
      {
        key = "<S-Right>";
        action = ":vertical resize +2<CR>";
        options.desc = "Increase horizontal window size";
        mode = [ "n" ];
      }
      {
        key = "<S-Left>";
        action = ":vertical resize -2<CR>";
        options.desc = "Decrease horizontal window size";
        mode = [ "n" ];
      }
      {
        key = "<leader>gr";
        action = "<cmd>Gitsigns reset_hunk<CR>";
        options.desc = "Reset hunk";
        mode = [ "n" ];
      }
      {
        key = "<leader>gR";
        action = "<cmd>Gitsigns reset_buffer<CR>";
        options.desc = "Reset buffer";
        mode = [ "n" ];
      }
      {
        key = "<leader>gs";
        action = "<cmd>Gitsigns stage_hunk<CR>";
        options.desc = "Stage hunk";
        mode = [ "n" ];
      }
      {
        key = "<leader>gg";
        action = "<cmd>LazyGit<CR>";
        options.desc = "LazyGit";
        mode = [ "n" ];
      }
      {
        key = "<leader>gS";
        action = "<cmd>Gitsigns stage_buffer<CR>";
        options.desc = "Stage buffer";
        mode = [ "n" ];
      }
      {
        key = "]h";
        action = "<cmd>Gitsigns next_hunk<CR>";
        options.desc = "Next hunk";
        mode = [ "n" ];
      }
      {
        key = "[h";
        action = "<cmd>Gitsigns prev_hunk<CR>";
        options.desc = "Prev hunk";
        mode = [ "n" ];
      }
      {
        key = "<leader>gp";
        action = "<cmd>Gitsigns preview_hunk<CR>";
        options.desc = "Preview hunk";
        mode = [ "n" ];
      }
      {
        key = "<leader>gl";
        action = "<cmd>Gitsigns toggle_current_line_blame<CR>";
        options.desc = "Blame";
        mode = [ "n" ];
      }
      {
        key = "<leader>gd";
        action = "<cmd>Gitsigns diffthis<CR>";
        options.desc = "Diff";
        mode = [ "n" ];
      }
      # Move to window using the <ctrl> hjkl keys
      {
        key = "<C-h>";
        action = "<C-w>h";
        options.silent = true;
        options.desc = "Go to left window";
        mode = "n";
      }
      {
        key = "<C-j>";
        action = "<C-w>j";
        options.silent = true;
        options.desc = "Go to lower window";
        mode = "n";
      }
      {
        key = "<C-k>";
        action = "<C-w>k";
        options.silent = true;
        options.desc = "Go to upper window";
        mode = "n";
      }
      {
        key = "<C-l>";
        action = "<C-w>l";
        options.silent = true;
        options.desc = "Go to right window";
        mode = "n";
      }
      # buffers
      {
        key = "<S-h>";
        action = "<cmd>bprevious<cr>";
        options.desc = "Prev buffer";
        mode = "n";
      }
      {
        key = "<S-l>";
        action = "<cmd>bnext<cr>";
        options.desc = "Next buffer";
        mode = "n";
      }
      {
        key = "[b";
        action = "<cmd>bprevious<cr>";
        options.desc = "Prev buffer";
        mode = "n";
      }
      {
        key = "]b";
        action = "<cmd>bnext<cr>";
        options.desc = "Next buffer";
        mode = "n";
      }
      {
        key = "<leader>bb";
        action = "<cmd>e #<cr>";
        options.desc = "Switch to Other Buffer";
        mode = "n";
      }
      {
        key = "<leader>`";
        action = "<cmd>e #<cr>";
        options.desc = "Switch to Other Buffer";
        mode = "n";
      }
      {
        key = "<esc>";
        action = "<cmd>noh<cr><esc>";
        options.desc = "Escape and clear hlsearch";
        mode = [ "i" "n" ];
      }
      # Clear search, diff update and redraw, taken from runtime/lua/_editor.lua
      {
        key = "<leader>ur";
        action = "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>";
        options.desc = "Redraw / clear hlsearch / diff update";
        mode = [ "i" "n" ];
      }
      # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
      {
        key = "n";
        action = "'Nn'[v:searchforward].'zv'";
        options.desc = "Next search result";
        mode = "n";
      }
      {
        key = "n";
        action = "'Nn'[v:searchforward]";
        options.desc = "Next search result";
        mode = [ "x" "o" ];
      }
      {
        key = "N";
        action = "'nN'[v:searchforward].'zv'";
        options.desc = "Prev search result";
        mode = "n";
      }
      {
        key = "n";
        action = "'nN'[v:searchforward]";
        options.desc = "Prev search result";
        mode = [ "x" "o" ];
      }
      # Add undo break-points
      {
        key = ",";
        action = ",<c-g>u";
        mode = "i";
      }
      {
        key = ".";
        action = ".<c-g>u";
        mode = "i";
      }
      {
        key = ";";
        action = ";<c-g>u";
        mode = "i";
      }
      # save file
      {
        key = "<C-s>";
        action = "<cmd>w<cr><esc>";
        options.desc = "Save file";
        mode = [ "i" "x" "n" "s" ];
      }
      # keywordprg
      {
        key = "<leader>K";
        action = "<cmd>norm! K<cr>";
        options.desc = "Keywordprg";
        mode = [ "i" "x" "n" "s" ];
      }

      # better indenting
      {
        key = "<";
        action = "<gv";
        mode = "v";
      }
      {
        key = ">";
        action = ">gv";
        mode = "v";
      }

      # new file
      {
        key = "<leader>fn";
        action = "<cmd>enew<cr>";
        options.desc = "New File";
        mode = "n";
      }
      {
        key = "<leader>xl";
        action = "<cmd>lopen<cr>";
        options.desc = "Location List";
        mode = "n";
      }
      {
        key = "<leader>xq";
        action = "<cmd>copen<cr>";
        options.desc = "Quickfix List";
        mode = "n";
      }
      {
        key = "[q";
        action = "vim.cmd.cprev";
        options.desc = "Previous Quickfix";
        lua = true;
        mode = "n";
      }
      {
        key = "]q";
        action = "vim.cmd.cnext";
        options.desc = "Next Quickfix";
        lua = true;
        mode = "n";
      }
      {
        action = "<cmd>Neotree toggle<CR>";
        key = "<leader>e";
        options.desc = "Neotree";
        mode = [ "n" ];
      }
    ];

  };
}
