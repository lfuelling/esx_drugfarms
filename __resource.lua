
description "vRP drugfarms"

dependency "vrp"

client_scripts{ 
  "Proxy.lua",
  "warehouses.lua",
  "ipls.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}