------------------------------------------------------------------
-- > npGemViewer by NoppO (Theologica @ Blackrock)
-- > Version: 1.0-Alpha
------------------------------------------------------------------

------------------------------------------------------------------
-- > Locales
------------------------------------------------------------------

------------------------------------------------------------------
-- > Indexes
------------------------------------------------------------------
		
	NPGV_GEMS = {}
	
	--[[
	e = ERA (1=Vanilla, 2=TheBurningCrusade, 3=WrathOfTheLichKing, 4=Cataclysm)
	q = QUALITY (1=UNCOMMON, 2=RARE, 3=EPIC)
	c = COLOR (1=RED, 2=BLUE, 3=YELLOW, 4=PURPLE, 5=GREEN, 6=ORANGE, 7=META, 8=SIMPLE, 9=PRISMATIC, 10=HYDRAULIC, 11=COGWHEEL)
	id = INDEX (1 = UNCUT, ELSE = CUTGEM(alphabetically ordered))
	--]]
	
	for e=1, 4 do 
		NPGV_GEMS[e] = {}
		for q=1, 3 do
			NPGV_GEMS[e][q] = {}
			for c=1, 11 do
				NPGV_GEMS[e][q][c] = {}
				for id=1, 11 do
					NPGV_GEMS[e][q][c][id] = nil
				end
			end
		end
	end 
	
	-- 	NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	
	-- CATACLYSM RARE RED
	NPGV_GEMS[3][3][1][1] = "52190" -- Inferno Ruby [Uncut]
	NPGV_GEMS[3][3][1][2] = "52206" -- Bold Inferno Ruby (+40 Strength)
	NPGV_GEMS[3][3][1][3] = "52207" -- Brilliant Inferno Ruby (+40 Intelect)
	NPGV_GEMS[3][3][1][4] = "52212" -- Delicate Inferno Ruby (+40 Agility)
	NPGV_GEMS[3][3][1][5] = "52216" -- Flashing Inferno Ruby (+40 Parry rating)
	NPGV_GEMS[3][3][1][6] = "52230" -- Precise Inferno Ruby (+40 Expertise Rating)
	
	-- CATACLYSM RARE BLUE
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	-- NPGV_GEMS[e][q][c][id] = "xxxxx" -- NAME (STAT)
	
------------------------------------------------------------------
-- > Frames
------------------------------------------------------------------







































