package = "kong-plugin-wego-rate-limiting"
version = "1.0-1"
source = {
  url = "git://github.com/wego/wego-rate-limiting",
  tag = "v1.0.0"
}
description = {
  summary = "Wego's rate limiting plugin for Kong",
  license = "MIT",
  homepage = "https://geeks.wego.com"
}
dependencies = {
  "kong >= 0.10"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.wego-rate-limiting.migrations.cassandra"] = "migrations/cassandra.lua",
    ["kong.plugins.wego-rate-limiting.migrations.postgres"] = "migrations/postgres.lua",
    ["kong.plugins.wego-rate-limiting.handler"] = "handler.lua",
    ["kong.plugins.wego-rate-limiting.schema"] = "schema.lua",
    ["kong.plugins.wego-rate-limiting.daos"] = "daos.lua",
    ["kong.plugins.wego-rate-limiting.policies"] = "policies/init.lua",
    ["kong.plugins.wego-rate-limiting.policies.cluster"] = "policies/cluster.lua"
  }
}
