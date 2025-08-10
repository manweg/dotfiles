return
  {
    { -- Fuzzy Finder (files, lsp, etc)
      'nvim-telescope/telescope.nvim',
      event = 'VimEnter',
      branch = '0.1.x',
      dependencies = {
        'nvim-lua/plenary.nvim',
        { -- If encountering errors, see telescope-fzf-native README for installation instructions
          'nvim-telescope/telescope-fzf-native.nvim',
          build = 'make',
          cond = function()
            return vim.fn.executable 'make' == 1
          end,
        },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
      },
      config = function()
        require('telescope').setup {
          extensions = {
            ['ui-select'] = {
              require('telescope.themes').get_dropdown(),
            },
          },
        }

        -- Enable Telescope extensions if they are installed
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        -- Helper function to get the correct directory
        local function get_current_search_dir()
          -- Check if the current buffer's filetype is 'oil'
          if vim.bo.filetype == "oil" then
            -- Use the directory from the 'oil.nvim' buffer, remove the 'oil://' prefix
            local oil_dir = vim.fn.expand('%:p:h')
            local clean_oil_dir = oil_dir:gsub('^oil://', '')  -- Remove 'oil://' prefix
            print("Cleaned Oil.nvim directory: " .. clean_oil_dir)  -- Debugging line
            return clean_oil_dir
          else
            local file_dir = vim.fn.expand('%:p:h')
            print("File directory: " .. file_dir)  -- Debugging line
            return file_dir
          end
        end

        -- Grep in the current directory based on context (oil.nvim or current file)
        vim.keymap.set('n', '<leader>fg', function()
          local search_dir = get_current_search_dir()
          print("Using search directory: " .. search_dir)  -- Debugging line
          require('telescope.builtin').live_grep({
            search_dirs = { search_dir }
          })
        end, { desc = 'Find by Grep in current directory' })

        -- Other keymaps and configuration
        vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Find Help' })
        vim.keymap.set('n', '<leader>fk', require('telescope.builtin').keymaps, { desc = 'Find Keymaps' })
        vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find Files' })
        vim.keymap.set('n', '<leader>fs', require('telescope.builtin').builtin, { desc = 'Find Select Telescope' })
        vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = 'Find current Word' })
        vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = 'Find Diagnostics' })
        vim.keymap.set('n', '<leader>fr', require('telescope.builtin').resume, { desc = 'Find Resume' })
        vim.keymap.set('n', '<leader>f.', require('telescope.builtin').oldfiles, { desc = 'Find Recent Files ("." for repeat)' })
        vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })

        -- Grep in current git dir
        vim.keymap.set('n', '<leader>fG', function()
          local git_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]
          if vim.v.shell_error ~= 0 then
            git_root = vim.fn.getcwd()   -- Falls kein Git-Repo vorhanden ist, nutze das aktuelle Verzeichnis
          end
          require('telescope.builtin').live_grep {
            search_dirs = { git_root },
            additional_args = function(_)
              return { '--hidden' }
            end,
          }
        end, { desc = 'Find by Grep in Git root (include hidden)' })

        -- Find File with hidden
        vim.keymap.set('n', '<leader>fF', function()
          require('telescope.builtin').find_files({
            hidden = true,
            no_ignore = true,
          })
        end, { desc = 'Find Files (including hidden)' })

        -- Slightly advanced example of overriding default behavior and theme
        vim.keymap.set('n', '<leader>/', function()
          require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            winblend = 10,
            previewer = false,
          })
        end, { desc = 'Fuzzily find in current buffer' })

        -- It's also possible to pass additional configuration options.
        vim.keymap.set('n', '<leader>f/', function()
          require('telescope.builtin').live_grep {
            grep_open_files = true,
            prompt_title = 'Live Grep in Open Files',
          }
        end, { desc = 'Find in Open Files' })

        -- Shortcut for searching your Neovim configuration files
        vim.keymap.set('n', '<leader>fn', function()
          require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })
        end, { desc = 'Search Neovim Config Files' })

        -- 1. **Custom Search for Specific File Types**: Find Python files in the current directory
        vim.keymap.set('n', '<leader>fp', function()
          require('telescope.builtin').find_files({
            prompt_title = 'Find Python Files',
            search_dirs = { vim.fn.getcwd() },
            find_command = { 'find', '.', '-type', 'f', '-name', '*.py' }
          })
        end, { desc = 'Find Python Files' })

        -- 2. **Git Commits Search**
        vim.keymap.set('n', '<leader>fc', function()
          require('telescope.builtin').git_commits({
            prompt_title = 'Git Commits',
            git_commands = { 'git', 'log', '--oneline' }
          })
        end, { desc = 'Search Git Commits' })

        -- 3. **Git Branches Search**
        vim.keymap.set('n', '<leader>fb', function()
          require('telescope.builtin').git_branches({
            prompt_title = 'Git Branches'
          })
        end, { desc = 'Switch Git Branches' })

        -- 4. **History Search (Search Previous Commands)**
        vim.keymap.set('n', '<leader>fhc', function()
          require('telescope.builtin').command_history()
        end, { desc = 'Search Command History' })

        -- 5. **Telescope Keymap Search**
        vim.keymap.set('n', '<leader>fm', function()
          require('telescope.builtin').keymaps({
            prompt_title = 'Search Key Mappings'
          })
        end, { desc = 'Search Key Mappings' })

        -- 6. **Telescope Buffers with CWD Filter**
        vim.keymap.set('n', '<leader>fb', function()
          require('telescope.builtin').buffers({
            only_cwd = true,
            sort_mru = true,
          })
        end, { desc = 'Find Open Buffers' })
      end,
    },
  }
