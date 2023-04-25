local function get_battery_name()
  if mods["FreightForwarding"] then return "ff-charged-battery" end
  if mods["battery-powered"] then return "bp-charged-battery" end
  log("Electric Ammo: must install Freight Forwarding or Battery Powered mod")
  return "battery"
end

local function get_technology_name()
  if mods["FreightForwarding"] then return "ff-battery-charging" end
  if mods["battery-powered"] then return "electric-energy-accumulators" end
  log("Electric Ammo: must install Freight Forwarding or Battery Powered mod")
  return "battery"
end

ElectricAmmo = {}

ElectricAmmo.BATTERY_NAME = get_battery_name()
ElectricAmmo.TECHNOLOGY_NAME = get_technology_name()
