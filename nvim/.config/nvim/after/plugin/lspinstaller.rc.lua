local servers = {
  "yamlls",
  "gopls",
  "jsonls", 
  "tsserver",
  "pylsp",
  "rust_analyzer",
  "terraformls",
  "solargraph"
  }

local lsp_installer = require("nvim-lsp-installer")

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end

end

lsp_installer.on_server_ready(function(server)
local opts = {}

server:setup(opts)
end)
