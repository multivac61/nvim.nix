{ pkgs, ... }: {
  plugins = {
    undotree = {
      enable = true;
      focusOnToggle = true;
    };

    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };

    nvim-colorizer.enable = true;
    illuminate.enable = true;
    nix.enable = true;
    todo-comments.enable = true;
    lspkind.enable = true;
    better-escape.enable = true;
    project-nvim.enable = true;

    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          desc = "find files";
        };
        "<C-p>" = {
          action = "git_files";
          desc = "find files in git";
        };
      };
      extensions.fzf-native.enable = true;
    };

    lightline.enable = true;
    lint.enable = true;

    which-key.enable = true;
    dashboard.enable = true;
    gitsigns.enable = true;
    indent-blankline.enable = true;
    persistence.enable = true;


    treesitter = {
      enable = true;
      ensureInstalled = [
        "vimdoc"
        "nix"
        "lua"
        "vim"
        "javascript"
        "typescript"
        "c"
        "regex"
        "bash"
        "markdown"
        "markdown_inline"
        "svelte"
        "prisma"
        "sql"
        "typescript"
        "tsx"
        "regex"
        "bash"
        "rust"
        "toml"
        "kdl"
      ];
      indent = true;
      nixvimInjections = true;
    };
    treesitter-context.enable = true;
    treesitter-textobjects.enable = true;
    ts-autotag.enable = true;
    ts-context-commentstring.enable = true;

    # luasnip.enable = true;
    luasnip = {
      enable = true;
      fromVscode = [{ paths = "${pkgs.vimPlugins.friendly-snippets}"; }];
    };

    lsp = {
      enable = true;
      servers = {
        nil_ls = {
          enable = true;
          extraOptions = {
            formatting.__raw = ''{ command = { "nixpkgs-fmt" } }'';
          };
        };
        lua-ls.enable = true;
        tsserver.enable = true;
        texlab.enable = true;
        clangd.enable = true;
      };
    };

    clangd-extensions = {
      enable = true;
      enableOffsetEncodingWorkaround = true;
    };

    lsp-format.enable = true;

    nvim-cmp = {
      enable = true;
      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = ''cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
            })'';
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        {
          name = "buffer";
          # Words from other open buffers can also be suggested.
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
        { name = "path"; }
      ];
    };

    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-emoji.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-latex-symbols.enable = true;

    flash.enable = true;
    harpoon = {
      enable = true;
      keymapsSilent = true;
      enableTelescope = true;
      keymaps = {
        addFile = "<leader>a";
        toggleQuickMenu = "<leader>h";
        navNext = "]]";
        navPrev = "[[";
      };
    };

    mini = {
      enable = true;
      modules = {
        pairs = { };
        comment = {
          options = {
            custom_commentstring.__raw = ''function()
              return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
              end,'';
          };
        };
        surround = {
          add = "gza";
          delete = "gzd";
          find = "gzf";
          find_left = "gzF";
          highlight = "gzh";
          replace = "gzr";
          update_n_lines = "gzn";
        };
        ai = {
          n_lines = 500;
          custom_textobjects = {
            o = ''ai.gen_spec.treesitter({
                a = { "@block.outer", "@conditional.outer", "@loop.outer" },
                i = { "@block.inner", "@conditional.inner", "@loop.inner" },
                }, {}),'';
            f = ''ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),'';
            c = ''ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),'';
          };
        };
      };
    };

    notify = {
      enable = true;
      stages = "fade";
      timeout = 3000;
      backgroundColour = "#000000";
    };

    lualine.enable = true;

    noice.enable = true;
    trouble.enable = true;
    fugitive.enable = true;

    comment-nvim = {
      enable = true;
      sticky = true;
    };

    bufferline.enable = true;
    neo-tree = {
      enable = true;
      addBlankLineAtTop = true;
      closeIfLastWindow = true;
      enableDiagnostics = true;
      enableGitStatus = true;
      autoCleanAfterSessionRestore = true;
      window.mappings = {
        "e".__raw = "function() vim.api.nvim_exec('Neotree filesystem', true) end";
        "b".__raw = "function() vim.api.nvim_exec('Neotree buffers', true) end";
        "g".__raw = "function() vim.api.nvim_exec('Neotree git_status', true) end";
      };
      filesystem = {
        followCurrentFile.enabled = true;
        filteredItems = {
          visible = true;
          hideDotfiles = false;
          hideByName = [
            ".git"
            ".node_modules"
          ];
        };
      };
    };
  };
}
