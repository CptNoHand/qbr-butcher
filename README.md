# qbr-butcher
Butcher/Huntingsystem for QBR-Core

Original resource: https://github.com/CryptoGenics/redemrp_butcher

# Installation:

- copy qbr-butcher into your [qbr] folder
- go to your qbr-core/server/player.lua
- search for 
``` 
PlayerData.metadata['xp'] = PlayerData.metadata['xp'] or {
  ['main'] = 0,
  ['herbalism'] = 0,
  ['mining'] = 0
}
PlayerData.metadata['levels'] = PlayerData.metadata['levels'] or {
  ['main'] = 0,
  ['herbalism'] = 0,
  ['mining'] = 0
}
```
- change it to
``` 
PlayerData.metadata['xp'] = PlayerData.metadata['xp'] or {
  ['main'] = 0,
  ['herbalism'] = 0,
  ['mining'] = 0,
  ['hunting'] = 0
}
PlayerData.metadata['levels'] = PlayerData.metadata['levels'] or {
  ['main'] = 0,
  ['herbalism'] = 0,
  ['mining'] = 0,
  ['hunting'] = 0
}
```
- add the items from files/items.lua to your qbr-core/shared/items.lua
- copy image from files/meat.png to your qbr-inventory/html/images
- create a new character or add the hunting xp and level manually into the database (for every player) 
- have fun

# Config

Prices, drops and Animals can be edited in the config.lua
List of Animals can be found here: https://sporny-dev.net/index.php?title=Peds
