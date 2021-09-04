local blips = {
    -- {title="", colour=, id=, x=, y=, z=},

    {title="Mechanic", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
    {title="Pacific Bank", colour=5, id=108, x = 260.130, y = 204.308, z = 109.287},
    {title="Police Dept.", colour=26, id=60, x = 434.14, y = -981.89, z = 30.27},
    {title="Parking", colour=3, id=524, x = 213.74, y = -809.36, z = 31.01,},
    {title="Unicorn.", colour=27, id=121, x = 128.05, y = -1297.53, z = 29.26},
    {title="Hospital", colour=1, id=107, x = -447.61, y = -340.88, z = 34.5},
    {title="Prison", colour=0, id=252, x = 1791.59, y = 2593.74, z = 45.79},
    {title="Government", colour=0, id=419, x = -429.43, y = 1109.46, z = 327.68},
    {title="Fort Zancudo", colour=25, id=590, x = -1614.26, y = 2824.12, z = 18.57},
    {title="Ranger", colour=52, id=60, x = 386.91, y = 792.48, z = 187.69},
    {title="Casino", colour=0, id=679, x = 928.11, y = 44.55, z = 80.89},
    {title="Hospital", colour=1, id=107, x = 1828.72, y = 3691.75, z = 34.22},
    {title="Hospital", colour=1, id=107, x = -248.49, y = 6332.57, z = 32.42},
    {title="Hospital", colour=1, id=107, x = 343.88, y = -1398.89, z = 32.5},
    {title="Burgershot", colour=1, id=106, x = -1183.67, y = -884.31, z = 13.79},
    {title="Vineyard", colour=27, id=304, x = -1889.41, y = 2051.33, z = 140.98},
    {title="Police Dept.", colour=26, id=60, x = -447.65, y = 6013.57, z = 31.71},
    {title="Mechanic", colour=5, id=446, x = 112.3, y = 6619.76, z = 31.81},
    {title="Mechanic", colour=5, id=446, x = 722.46, y = -1088.77, z = 22.19},
    {title="Mechanic", colour=5, id=446, x = -1145.68, y = -1990.95, z = 13.16},
    {title="Mechanic", colour=5, id=446, x = 1178.35, y = 2646.35, z = 37.79},
    {title="Bennys", colour=1, id=446, x = -205.63, y = -1310.18, z = 31.29},
    {title="Plane Yard", colour=39, id=423, x = 2397.08, y = 3111.14, z = 48.13},
 }

 --[[Info- To disable a blip add "--" before the blip line
 To add a blip just copy and paste a line and change the info and location if needed

 DO NO REPOST, DESTROY OR CLAIM MY SCRIPTS
 
 Made By TheYoungDevelopper]]
      
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