{
  config = {
    keymaps = [
      # # better up/down
      # {
      #   key = "j";
      #   action = "v:count == 0 ? 'gj' : 'j'";
      #   options.silent = true;
      #   lua = true;
      #   mode = [ "n" "x" ];
      # }
      # {
      #   key = "<Down>";
      #   action = "v:count == 0 ? 'gj' : 'j'";
      #   options.silent = true;
      #   lua = true;
      #   mode = [ "n" "x" ];
      # }
      # {
      #   key = "k";
      #   action = "v:count == 0 ? 'gk' : 'k'";
      #   options.silent = true;
      #   lua = true;
      #   mode = [ "n" "x" ];
      # }
      # {
      #   key = "<Up>";
      #   action = "v:count == 0 ? 'gk' : 'k'";
      #   options.silent = true;
      #   lua = true;
      #   mode = [ "n" "x" ];
      # }
      # Move to window using the <ctrl> hjkl keys
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
      {
        key = "<C-h>";
        action = "<C-w>h";
        options.silent = true;
        mode = "n";
      }
      {
        key = "<C-j>";
        action = "<C-w>j";
        options.silent = true;
        mode = "n";
      }
      {
        key = "<C-k>";
        action = "<C-w>k";
        options.silent = true;
        mode = "n";
      }
      {
        key = "<C-l>";
        action = "<C-w>l";
        options.silent = true;
        mode = "n";
      }
      # buffers
      {
        key = "<S-h>";
        action = "<cmd>bprevious<cr>";
        mode = "n";
      }
      {
        key = "<S-l>";
        action = "<cmd>bnext<cr>";
        mode = "n";
      }
      {
        key = "[b";
        action = "<cmd>bprevious<cr>";
        mode = "n";
      }
      {
        key = "]b";
        action = "<cmd>bnext<cr>";
        mode = "n";
      }
      {
        key = "<leader>bb";
        action = "<cmd>e #<cr>";
        mode = "n";
      }
      {
        key = "<leader>`";
        action = "<cmd>e #<cr>";
        mode = "n";
      }
      # Escape and clear hlsearch
      {
        key = "<esc>";
        action = "<cmd>noh<cr><esc>";
        mode = [ "i" "n" ];
      }
      # Clear search, diff update and redraw, taken from runtime/lua/_editor.lua
      {
        key = "<leader>ur";
        action = "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>";
        mode = [ "i" "n" ];
      }
      # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
      {
        key = "n";
        action = "'Nn'[v:searchforward].'zv'";
        mode = "n";
      }
      {
        key = "n";
        action = "'Nn'[v:searchforward]";
        mode = [ "x" "o" ];
      }
      {
        key = "N";
        action = "'nN'[v:searchforward].'zv'";
        mode = "n";
      }
      {
        key = "n";
        action = "'nN'[v:searchforward]";
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
        mode = [ "i" "x" "n" "s" ];
      }
      # keywordprg 
      {
        key = "<leader>K";
        action = "<cmd>norm! K<cr>";
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
        mode = "n";
      }
      {
        key = "<leader>xl";
        action = "<cmd>lopen<cr>";
        mode = "n";
      }
      {
        key = "<leader>xq";
        action = "<cmd>copen<cr>";
        mode = "n";
      }
      {
        key = "[q";
        action = "vim.cmd.cprev";
        lua = true;
        mode = "n";
      }
      {
        key = "]q";
        action = "vim.cmd.cnext";
        lua = true;
        mode = "n";
      }
    ];

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
      markdown_recommended_style = 0;
      netrw_browse_split = 0;
      netrw_banner = 0;
      netrw_winsize = 25;
    };

    options = {
      autowrite = true;
      completeopt = "menu,menuone,noselect";
      conceallevel = 3;
      confirm = true;
      cursorline = true;
      expandtab = true;
      formatoptions = "jcroqlnt";
      grepformat = "%f:%l:%c:%m";
      grepprg = "rg --vimgrep";
      ignorecase = true;
      inccommand = "nosplit";
      laststatus = 0;
      list = true;
      mouse = "a";
      number = true;
      relativenumber = true;
      pumblend = 10;
      pumheight = 10;
      scrolloff = 8;
      sessionoptions.__raw = ''{ "buffers", "curdir", "tabpages", "winsize" }'';
      shiftround = true;
      shiftwidth = 2;
      showmode = false;
      sidescrolloff = 8;
      signcolumn = "yes";
      smartcase = true;
      smartindent = true;
      spelllang.__raw = ''{ "en" }'';
      splitbelow = true;
      splitright = true;
      tabstop = 2;
      softtabstop = 2;
      termguicolors = true;
      timeoutlen = 300;
      updatetime = 200;
      wildmode = "longest:full,full";
      winminwidth = 5;
      splitkeep = "screen";
      wrap = false;
      swapfile = false;
      backup = false;
      undodir.__raw = ''os.getenv("HOME") .. "/.vim/undodir"'';
      undofile = true;
      undolevels = 10000;
      hlsearch = false;
      incsearch = true;
      # colorcolumn = "80";
    };

    colorschemes.kanagawa.enable = true;

    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
    };
  };
}
