local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

    {title="LSC", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
    {title="Pacific Bank", colour=5, id=108, x = 260.130, y = 204.308, z = 109.287},
    {title="Police Dept.", colour=26, id=60, x = 434.14, y = -981.89, z = 30.27},
    {title="Parking", colour=3, id=524, x = 213.74, y = -809.36, z = 31.01,},
    {title="Unicorn.", colour=27, id=121, x = 128.05, y = -1297.53, z = 29.26},
    {title="Hospital", colour=1, id=107, x = -447.61, y = -340.88, z = 34.5},
    {title="Prison", colour=0, id=252, x = 1791.59, y = 2593.74, z = 45.79},
    {title="Government", colour=0, id=419, x = -429.43, y = 1109.46, z = 327.68},
    {title="Fort Zancudo", colour=25, id=590, x = -1614.26, y = 2824.12, z = 18.57}
 }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)