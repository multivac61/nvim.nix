{ pkgs, ... }: {
  config = {
    autoCmd = [
      {
        event = [ "FileType" ];
        pattern = [ "qf" ];
        command = "nmap <buffer> <CR> <CR>";
        # options.desc = "Restore enter in quickfix";
      }
      {
        event = [ "FileType" ];
        pattern = [ "qf" ];
        command = "nmap <buffer><silent> q :ccl<CR>";
        # options.desc = "Quit quickfix with q";
      }
      {
        event = [ "FileType" ];
        pattern = [ "help" ];
        command = "nmap <buffer><silent> q :q<CR>";
        # options.desc = "Quit help with q";
      }
      {
        event = [ "FileType" ];
        pattern = [ "markdown" ];
        command = "<cmd>set wrap<CR>";
        # options.desc = "Wrap markdown";
      }
    ];

    globals = {
      mapleader = " ";
    };

    options = {
      sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";
      termguicolors = true;
      scrolloff = 8;
      swapfile = false;
      backup = false; # don't create backups
      hlsearch = false;
      incsearch = true;
      wrap = false;

      shiftwidth = 2;
      tabstop = 4;
      softtabstop = 4;
      expandtab = true;
      smartindent = true;

      cursorline = true;
      number = true;
      relativenumber = true;
      numberwidth = 2;
      ruler = false;

      splitbelow = true;
      splitright = true;
      undofile = true;
      undolevels = 10000;

      signcolumn = "yes";
      cmdheight = 0;
      cot = [ "menu" "menuone" "noselect" ];

      updatetime = 100;
      timeout = true;
      timeoutlen = 250;

      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      clipboard = "unnamedplus";
    };

    extraPlugins = with pkgs.vimPlugins; [
      # overseer-nvim
      # plenary-nvim
      nvim-spectre
      dressing-nvim
      friendly-snippets
      lazygit-nvim
    ];

    extraPackages = with pkgs; [
      fd
      ripgrep
      lazygit
      gnused
    ];
    extraConfigLua = ''
      require("dressing").setup({})
    '';
    colorschemes.tokyonight.enable = true;
  };
}
