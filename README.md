# vrp_drugfarms
This plugin enables buildings from the bikers dlc with weed farms, meth lab, coke lab and a biker club house, they have permission based entrance, if user is in group he can get in, else he can't.

Add the following groups to /vrp/cfg/groups.lua
```
  ["marihuana"] = {
  _config = {onspawn = function(player) vRPclient.notify(player,{"Eres marihuanero."}) end},
  }, 

  ["blanqueo"] = {
  _config = {onspawn = function(player) vRPclient.notify(player,{"Tu eres un blanqueadero."}) end},
  }, 

  ["meta"] = {
  _config = {onspawn = function(player) vRPclient.notify(player,{"Eres un metero."}) end},
  }, 

  ["coke"] = {
  _config = {onspawn = function(player) vRPclient.notify(player,{"Eres un puto cocainomano"}) end},
  }, 
  ["motero"] = {
  _config = {onspawn = function(player) vRPclient.notify(player,{"Eres un motero."}) end},
  }, 
  ```
  
  marihuana >> allows weed entrance
  blanqueo >> money laundering
  meta >> meth lab
  coke >> coke lab
  motero >> biker clubhouse
  
    ```
    The coords for everything is in warehouses.lua
    It's all commented there, coords and shit.

·    Screenshots

https://cdn.discordapp.com/attachments/357969855523192834/389485760522223626/unknown.png
https://cdn.discordapp.com/attachments/357969855523192834/389485869918322688/unknown.png
