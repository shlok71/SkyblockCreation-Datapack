data modify storage sbstats:reforge SelectedItem.tag.Upgrades.reforge.type set value 'Neat'

item modify entity @s weapon.mainhand sbstats:reforge_type

item modify entity @s[nbt=!{SelectedItem:{tag:{Upgrades:{reforged:1b}}}}] weapon.mainhand sbstats:old_name
data modify storage sbstats:item_name Name set from entity @s SelectedItem.tag.SBStats.OldName
data modify storage sbstats:reforge Name set from entity @s SelectedItem.tag.Upgrades.reforge.type

# Apply stats

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 10
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 4
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'COMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 3

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 12
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 8
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'UNCOMMON'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 6

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 14
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 14
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'RARE'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 10

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 17
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 20
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'EPIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 15

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 20
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 30
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'LEGENDARY'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 20

execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_chance set value 25
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.crit_damage set value 40
execute if entity @s[nbt={SelectedItem:{tag:{Base:{rarity:'MYTHIC'}}}}] run data modify storage sbstats:reforge Item.tag.Upgrades.reforge.stats.intelligence set value 30

function sbstats:stats/get_item_stats
item modify entity @s weapon.mainhand sbstats:reforge_stat
item modify entity @s weapon.mainhand sbstats:reforged
execute as @s run function sbstats:reforges/apply_lore