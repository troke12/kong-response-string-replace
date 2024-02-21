package = "kong-response-string-replace"
version = "1.0.0-0"
source = {
    url = "git://github.com/troke12/kong-response-string-replace",
    branch = "master"
}
description = {
    summary = "A Kong plugin for string replacements in the response stream.",
    detailed = [[
      Find and replace patterns in the response stream.
    ]],
    homepage = "https://github.com/troke12/kong-response-string-replace",
    license = "MIT"
}
dependencies = {
    "lua-zlib ~> 1.2"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.kong-response-string-replace.handler"] = "handler.lua",
    ["kong.plugins.kong-response-string-replace.schema"] = "schema.lua",
    ["kong.plugins.kong-response-string-replace.replacements"] = "replacements.lua",
    ["kong.plugins.kong-response-string-replace.compression"] = "compression.lua",
    }
}
