require '__spidertron-logistics__/menu-simulations/menu-simulations' 

-- Mod check and prerequisity update approach stealed from https://github.com/ArcaniVictus/Hovercrafts/blob/master/data.lua
if mods["Insectitron"] then
    table.remove(data.raw.technology["spidertron-logistic-system"].prerequisites, 1)
    table.insert(data.raw.technology["spidertron-logistic-system"].prerequisites, "insectitron")
end