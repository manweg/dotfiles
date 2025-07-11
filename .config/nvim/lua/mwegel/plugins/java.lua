return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local jdtls = require("jdtls")
      local home = os.getenv("HOME")

      local capabilities = vim.tbl_deep_extend(
        "force",
        vim.lsp.protocol.make_client_capabilities(),
        require("cmp_nvim_lsp").default_capabilities()
      )

      local root_markers = { "pom.xml", ".git" }
      local root_dir = require("jdtls.setup").find_root(root_markers)
      if not root_dir then return end

      local workspace_dir = home .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

      jdtls.start_or_attach({
        cmd = {
          "jdtls",
          "-configuration", home .. "/.cache/jdtls/config",
          "-data", workspace_dir,
        },
        root_dir = root_dir,
        capabilities = capabilities,
        settings = {
          java = {
            configuration = {
              updateBuildConfiguration = "automatic",
              runtimes = {
                {
                  name = "JavaSE-17",
                  path = "/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home",
                  default = true,
                },
              },
            },
          },
        },
      })
    end,
  },
}
