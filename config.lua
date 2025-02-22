Config	= {}
Config.Locale = 'it'
Config.ESX = 'esx:getSharedObject'
Config.OLDESX = false		-- If true then it uses the `esx:getSharedObject` event, if false it uses import.lua from your es_extended



Config.K4MB1_Casino_Map = true						-- Set this true if you are using the new K4MB1 Casino Map https://www.k4mb1maps.com/
-- If you choose K4MB1 Casino Map, you do not have to change any coords, its all automatic



Config.DailySpin = true			-- If true it will let players to spin once per day
Config.ResetSpin = '00:01'		-- What time will reset the daily spins | Works only if Config.DailySpin is true
Config.SpinMoney = 5000				-- How much will each spin cost | Works only if Config.DailySpin is false (player must have the money in inventory)
Config.SpawnWheel = true			-- If your map does NOT have the wheel, set it to true. if your map has already a wheel set it to false
Config.WheelPos = {x = 948.25, y = 63.44, z = 75.40, h = 59.0}	-- Where the wheel prop will spawn OR where wheel prop is

Config.VehiclePos = {x = 953.59, y = 69.89, z = 75.24, h = 254.5}
Config.VehicleRot = true			-- If true then the vehicle will rotate slowly
Config.VehicleWinPos = {x = 933.29, y = -3.33, z = 78.34, h = 149.51}	-- Where the vehicle will spawn if a player win it

Config.Cars = {
	[1]  = 'urus',
}


-- First it will pick a random 
-- type: weapon, money, item, car (for money it will give only in bank)
-- name: the DB name, 
-- count: 

-- probability: the script will generate a number from 1 to 1000
-- if the random number is between a and b player will win
-- random number must be bigger than a and smaller or equal to b
-- if rnd > a and rnd <= b 

-- available sounds: 'car', 'cash', 'chips', 'clothes', 'mystery', 'win'
Config.Prices = {
	[1]  = {type = 'car', 		name = 'car', 			count = 1, 		sound = 'car', 		probability = {a =   0, b =   1}},	--  0.1 %   0.1 -- VEHICLE
	[2]  = {type = 'item', 		name = 'diatag', 		count = 3, 		sound = 'win', 		probability = {a =   1, b =   5}},	--  0.4 %   0.5 -- 15.000 RP
	[3]  = {type = 'item', 		name = 'diatag', 		count = 1, 		sound = 'clothes', 	probability = {a =   5, b =  10}},	--  0.5 %   1.0 -- CLOTHING
	[4]  = {type = 'item', 		name = 'jeton', 		count = 25000, 	sound = 'chips', 	probability = {a =  10, b =  20}},	--  1.0 %   2.0 -- 25.000 chips
	--[5]  = {type = 'money', 	name = 'money', 		count = 40000, 	sound = 'cash', 	probability = {a =  20, b =  40}},	--  2.0 %   4.0 -- 40.000 $
	[5]  = {type = 'item',	 	name = 'money', 		count = 40000, 	sound = 'cash', 	probability = {a =  20, b =  40}},	--  2.0 %   4.0 -- 40.000 $
	[6]  = {type = 'item', 		name = 'jeton', 		count = 50000, 	sound = 'win', 		probability = {a =  40, b =  60}},	--  2.0 %   6.0 -- 10.000 RP
	[7]  = {type = 'item', 		name = 'jeton', 		count = 30000, 	sound = 'clothes', 	probability = {a =  60, b =  80}},	--  4.0 %   8.0 -- CLOTHING
	[8]  = {type = 'weapon', 	name = 'weapon_g17', 	count = 1, 		sound = 'mystery', 	probability = {a =  80, b = 120}},	--  4.0 %  12.0 -- MYSTERY
	[9]  = {type = 'item', 		name = 'jeton', 		count = 20000, 	sound = 'chips', 	probability = {a = 120, b = 170}},	--  5.0 %  17.0 -- 20.000 chips
	--[10] = {type = 'money', 	name = 'money', 		count = 10000, 	sound = 'win', 		probability = {a = 170, b = 220}},	--  5.0 %  22.0 -- 7.500 RP
	[10] = {type = 'item',	 	name = 'money', 		count = 10000, 	sound = 'win', 		probability = {a = 170, b = 220}},	--  5.0 %  22.0 -- 7.500 RP
	[11] = {type = 'item',		name = 'jeton', 		count = 8000, 	sound = 'clothes', 	probability = {a = 220, b = 280}},	--  6.0 %  28.0 -- CLOTHING
	[12] = {type = 'item', 		name = 'jeton', 		count = 15000, 	sound = 'chips', 	probability = {a = 280, b = 340}},	--  6.0 %  34.0 -- 15.000 chips
	--[13] = {type = 'money', 	name = 'money', 		count = 30000, 	sound = 'cash', 	probability = {a = 340, b = 410}},	--  7.0 %  41.0 -- 30.000 $
	[13] = {type = 'item', 	name = 'money', 		count = 30000, 	sound = 'cash', 	probability = {a = 340, b = 410}},	--  7.0 %  41.0 -- 30.000 $
	--[14] = {type = 'money', 	name = 'money', 		count = 5000, 	sound = 'win', 		probability = {a = 410, b = 480}},	--  7.0 %  48.0 -- 5.000 RP
	[14] = {type = 'item', 	name = 'money', 		count = 5000, 	sound = 'win', 		probability = {a = 410, b = 480}},	--  7.0 %  48.0 -- 5.000 RP
	[15] = {type = 'item', 		name = 'jeton', 		count = 1000, 	sound = 'win', 		probability = {a = 480, b = 560}},	--  8.0 %  56.0 -- DISCOUNT
	[16] = {type = 'item',		name = 'jeton', 		count = 10000, 	sound = 'chips', 	probability = {a = 560, b = 640}},	--  8.0 %  64.0 -- 10.000 chips
	--[17] = {type = 'money',		name = 'money', 		count = 20000, 	sound = 'cash', 	probability = {a = 640, b = 720}},	--  8.0 %  72.0 -- 20.000 $
	[17] = {type = 'item',		name = 'money', 		count = 20000, 	sound = 'cash', 	probability = {a = 640, b = 720}},	--  8.0 %  72.0 -- 20.000 $
	[18] = {type = 'item', 		name = 'pillola_stress', 	count = 3, 		sound = 'win', 		probability = {a = 720, b = 810}},	--  9.0 %  81.0 -- 2.500 RP
	[19] = {type = 'item', 		name = 'pillola_stress', 	count = 1, 		sound = 'clothes', 	probability = {a = 810, b = 900}},	--  9.0 %  90.0 -- CLOTHING
	--[20] = {type = 'money', 	name = 'money', 		count = 50000, 	sound = 'cash', 	probability = {a = 900, b = 1000}},	-- 10.0 % 100.0 -- 50.000 $
	[20] = {type = 'item', 	name = 'money', 		count = 50000, 	sound = 'cash', 	probability = {a = 900, b = 1000}},	-- 10.0 % 100.0 -- 50.000 $
}