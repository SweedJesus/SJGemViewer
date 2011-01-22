------------------------------------------------------------------
-- > npGemViewer by NoppO (Theologica @ Blackrock)
-- > Version: 1.0-Alpha
-- > Last Updated: 1/20/2011 23:06
------------------------------------------------------------------
-- > Edit todo list in locales ONLY.
-- > Do not change TODO matrices values.
------------------------------------------------------------------
	
	
	
------------------------------------------------------------------
-- > Locales
------------------------------------------------------------------
	
	local npgvL = {}
	
	-- Todo general
	npgvL.todoGeneral_1 = '-- Todo General --'
	npgvL.todoGeneral_2 = '1. Finish indexing and ordering gem matrices.'
	npgvL.todoGeneral_3 = '2. Start on filtering frame.'
	npgvL.todoGeneral_4 = nil
	npgvL.todoGeneral_5 = nil
	npgvL.todoGeneral_6 = nil
	npgvL.todoGeneral_7 = nil
	npgvL.todoGeneral_8 = nil
	npgvL.todoGeneral_9 = nil
	npgvL.todoGeneral_10 = nil
	
	-- Todo gems
	npgvL.todoGems_1 = '-- Todo Gems Matrix --'
	npgvL.todoGems_2 = '1. Cata(RARE(B,Y,Pu,G,O,M,C)UNCOMMON(a bunch I haven\'t added yet!))'
	npgvL.todoGems_3 = '2. LK(all)'
	npgvL.todoGems_4 = '3. BC(all)'
	npgvL.todoGems_5 = '4. Vanilla(all)'
	npgvL.todoGems_6 = nil
	npgvL.todoGems_7 = nil
	npgvL.todoGems_8 = nil
	npgvL.todoGems_9 = nil
	npgvL.todoGems_10 = nil
	
	npgvL.helpParameters = '/npgv [ help | toggle | todo ]'
	npgvL.todoParameters = '/npgv todo [ gen | gem ]'
	
	npgvL.helpToggle = 'toggle: toggles the visibility of the query matrix frame.'
	npgvL.helpTodo = 'todo: lists of development things to do.'
	
------------------------------------------------------------------
-- > Media & Appearance Values
------------------------------------------------------------------
	
	-- Text colors
	local echo_yellow = '|cfffef00f' -- echo_yellow
	local echo_blue = '|cff82e2eb'
	local error_red = '|cffff2020'
	
	-- Frame textures
	local bg_rock = 'Interface\\FrameGeneral\\UI-Background-Rock'
	local bg_marble = 'Interface\\FrameGeneral\\UI-Background-Marble'
	local border_dialog = 'Interface\\DialogFrame\\UI-DialogBox-Border'
	
------------------------------------------------------------------
-- > Tables
------------------------------------------------------------------
	
	-- Todo general matrix
	TODO_GENERAL = {}
	for i=1, 10 do
		TODO_GENERAL[i] = 0
	end
	TODO_GENERAL[1] = npgvL.todoGeneral_1
	TODO_GENERAL[2] = npgvL.todoGeneral_2
	TODO_GENERAL[3] = npgvL.todoGeneral_3
	TODO_GENERAL[4] = npgvL.todoGeneral_4
	TODO_GENERAL[5] = npgvL.todoGeneral_5
	TODO_GENERAL[6] = npgvL.todoGeneral_6
	TODO_GENERAL[7] = npgvL.todoGeneral_7
	TODO_GENERAL[8] = npgvL.todoGeneral_8
	TODO_GENERAL[9] = npgvL.todoGeneral_9
	TODO_GENERAL[10] = npgvL.todoGeneral_10
	
	-- Todo gems matrix
	TODO_GEMS = {}
	for i=1, 10 do
		TODO_GEMS[i] = 0
	end
	TODO_GEMS[1] = npgvL.todoGems_1
	TODO_GEMS[2] = npgvL.todoGems_2
	TODO_GEMS[3] = npgvL.todoGems_3
	TODO_GEMS[4] = npgvL.todoGems_4
	TODO_GEMS[5] = npgvL.todoGems_5
	TODO_GEMS[6] = npgvL.todoGems_6
	TODO_GEMS[7] = npgvL.todoGems_7
	TODO_GEMS[8] = npgvL.todoGems_8
	TODO_GEMS[9] = npgvL.todoGems_9
	TODO_GEMS[10] = npgvL.todoGems_10
	
	-- Gems matrix

	-- e = ERA (1=Vanilla, 2=TheBurningCrusade, 3=WrathOfTheLichKing, 4=Cataclysm)
	-- q = QUALITY (1=UNCOMMON, 2=RARE, 3=EPIC)
	-- c = COLOR (1=RED, 2=BLUE, 3=YELLOW, 4=PURPLE, 5=GREEN, 6=ORANGE, 7=META, 8=SIMPLE, 9=PRISMATIC, 10=HYDRAULIC, 11=COGWHEEL)
	-- id = INDEX (1 = UNCUT, ELSE = CUTGEM(alphabetically ordered))
	
	NPGV_GEMS = {}
	for e=1,4 do 
		NPGV_GEMS[e] = {}
		for q=1,3 do
			NPGV_GEMS[e][q] = {}
			for c=1,11 do
				NPGV_GEMS[e][q][c] = {}
				for id=1,11 do
					NPGV_GEMS[e][q][c][id] = 0
				end
			end
		end
	end
	-- 	NPGV_GEMS[e][q][c][id] = 'xxxxx' -- NAME (STAT)
	
	-- CATACLYSM RARE RED
	NPGV_GEMS[4][2][1][1] = '52190' -- Inferno Ruby [Uncut]
	NPGV_GEMS[4][2][1][2] = '52212' -- Delicate Inferno Ruby (+40 Agility)
	NPGV_GEMS[4][2][1][3] = '52230' -- Precise Inferno Ruby (+40 Expertise Rating)
	NPGV_GEMS[4][2][1][4] = '52207' -- Brilliant Inferno Ruby (+40 Intelect)
	NPGV_GEMS[4][2][1][5] = '52216' -- Flashing Inferno Ruby (+40 Parry rating)
	NPGV_GEMS[4][2][1][6] = '52206' -- Bold Inferno Ruby (+40 Strength)
	
	-- CATACLYSM RARE BLUE
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	
	-- CATACLYSM RARE YELLOW
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	
	-- CATACLYSM RARE PURPLE
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	
	-- CATACLYSM RARE GREEN
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	
	-- CATACLYSM RARE ORANGE
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	-- NPGV_GEMS[][][][] = '' -- NAME (STAT)
	
------------------------------------------------------------------
-- > Frame Templates
------------------------------------------------------------------
	
	-- Header Template
	local function NPGV_HeaderTemplate(name, parent, width)
		local a = CreateFrame('Frame', nil, parent)
		a:SetSize(width, 28)
		a:SetPoint('TOP', parent, 'TOP', 0, 5)
		a:SetFrameStrata('BACKGROUND')
		a:SetFrameLevel(2)
		a:EnableMouse(1)
		
		local b = parent:CreateTexture(nil, 'OVERLAY')
		b:SetSize(width+130, 64)
		b:SetPoint('CENTER', a, 'CENTER', 0, -12)
		b:SetTexture('Interface\\DialogFrame\\UI-DialogBox-Header')
			
		local c = parent:CreateFontString(nil, 'OVERLAY')
		c:SetPoint('CENTER', a, 'CENTER')
		c:SetFont('Fonts\\ARIALN.ttf', 12, 'OUTLINE')
		c:SetText(name)
		return a
	end
	
	-- EditBox Template
	local function NPGV_EditBoxTemplate(name, parent, xcoord, ycoord, maxletters)
		local a = CreateFrame('EditBox', nil, NPGV_TestQuery)
		a:SetSize(24,20)
		a:SetPoint('BOTTOM', parent, 'BOTTOM', xcoord+3, ycoord)
		a:SetFrameStrata('DIALOG')
		a:SetFrameLevel(1)
		a:SetNumeric(true)
		a:SetAutoFocus(false)
		a:SetMaxLetters(maxletters)
		a:SetFont('Fonts\\ARIALN.ttf', 14)
		
		local b = NPGV_TestQuery:CreateTexture(nil, 'OVERLAY')
		b:SetSize(21.6,36)
		b:SetPoint('CENTER', a, 'CENTER', -13, 1)
		b:SetTexture('Interface\\Chatframe\\UI-ChatInputBorder-Left2')
		b:SetTexCoord(0,.60,0,1) -- left, right, top, bottom
		
		local c = NPGV_TestQuery:CreateTexture(nil, 'OVERLAY')
		c:SetSize(21.6,36)
		c:SetPoint('CENTER', a, 'CENTER', 7, 1)
		c:SetTexture('Interface\\Chatframe\\UI-ChatInputBorder-Right2')
		c:SetTexCoord(.40,1,0,1)
		
		local d = NPGV_TestQuery:CreateFontString(nil, 'OVERLAY', 'GameFontNormalSmall')
		d:SetPoint('BOTTOM', a, 'TOP', -3, 10)
		d:SetFont('Fonts\\ARIALN.ttf', 10)
		d:SetText(name)
		return a
	end
	
------------------------------------------------------------------
-- > Frames
------------------------------------------------------------------
	
	-- Test Query
	NPGV_TestQuery = CreateFrame('Frame', nil, UIParent) -- ('type', 'name', 'parent', 'template')
	NPGV_TestQuery:SetSize(240,100) -- Width, Height
	NPGV_TestQuery:SetPoint('CENTER', UIParent, 'CENTER', 0, 0)
	NPGV_TestQuery:SetFrameStrata('BACKGROUND') -- Level within all UI objects
	NPGV_TestQuery:SetFrameLevel(1) -- Level within UI object strata
	NPGV_TestQuery:SetMovable(1)
	NPGV_TestQuery:SetBackdrop({
		bgFile = bg_rock,
		edgeFile = border_dialog,
		tile = false,
		tileSize = 32,
		edgeSize = 32,
		insets = {left = 10, right = 10, top = 10, bottom = 10},
	})
	NPGV_TestQuery:Hide()
	
	-- Test Query Header
	NPGV_TestQueryHeader = NPGV_HeaderTemplate('npGemViewer', NPGV_TestQuery, 120) -- (name, parent, width)
	
	-- Test Query Close Button
	NPGV_TestQueryCloseButton = CreateFrame('Button', nil, NPGV_TestQuery, 'UIPanelCloseButton')
	NPGV_TestQueryCloseButton:SetPoint('TOPRIGHT', NPGV_TestQuery, 'TOPRIGHT', -5, -5)
	
	-- Test Query Clear Button
	NPGV_TestQueryClearButton = CreateFrame('Button', nil, NPGV_TestQuery)
	NPGV_TestQueryClearButton:SetSize(20,20)
	NPGV_TestQueryClearButton:SetPoint('BOTTOMLEFT', NPGV_TestQuery, 'BOTTOMLEFT', 12, 10)
	NPGV_TestQueryClearButton:SetNormalTexture('Interface\\BUTTONS\\UI-MinusButton-Up')
	NPGV_TestQueryClearButton:SetPushedTexture('Interface\\BUTTONS\\UI-MinusButton-Down')
	NPGV_TestQueryClearButton:SetHighlightTexture('Interface\\BUTTONS\\UI-MinusButton-Disabled', 'ADD')
	-- NPGV_TestQueryClearButton:SetFont('Fonts\\ARIALN.ttf', 12, 'OUTLINE')
	-- NPGV_TestQueryClearButton:SetFontString('Clear')
	-- NPGV_TestQueryClearButton:SetHighlightFontObject('Fonts\\ARIALN.ttf', 12, 'OUTLINE')
	
	-- Test Query Go Button
	NPGV_TestQueryGoButton = CreateFrame('Button', nil, NPGV_TestQuery)
	NPGV_TestQueryGoButton:SetSize(20,20)
	NPGV_TestQueryGoButton:SetPoint('BOTTOMRIGHT', NPGV_TestQuery, 'BOTTOMRIGHT', -10, 10)
	NPGV_TestQueryGoButton:SetNormalTexture('Interface\\BUTTONS\\UI-AttributeButton-Encourage-Up')
	NPGV_TestQueryGoButton:SetPushedTexture('Interface\\BUTTONS\\UI-AttributeButton-Encourage-Down')
	NPGV_TestQueryGoButton:SetHighlightTexture('Interface\\BUTTONS\\UI-AttributeButton-Encourage-Hilight', 'ADD')
	NPGV_TestQueryGoButton:SetText('Query')
	
	-- Test Query EditBox 1
	NPGV_TestQueryEditBox1 = NPGV_EditBoxTemplate('Era', NPGV_TestQuery, -69, 18, 2) -- (name, parent, xcoord, ycoord, maxletters)
	-- NPGV_TestQueryEditBox1:SetText('')

	-- Test Query EditBox 2
	NPGV_TestQueryEditBox2 = NPGV_EditBoxTemplate('Quality', NPGV_TestQuery, -23, 18, 2) -- (name, parent, xcoord, ycoord, maxletters)
	-- NPGV_TestQueryEditBox2:SetText('')
	
	-- Test Query EditBox 3
	NPGV_TestQueryEditBox3 = NPGV_EditBoxTemplate('Color', NPGV_TestQuery, 23, 18, 2) -- (name, parent, xcoord, ycoord, maxletters)
	-- NPGV_TestQueryEditBox3:SetText('')
	
	-- Test Query EditBox 4
	NPGV_TestQueryEditBox4 = NPGV_EditBoxTemplate('Index', NPGV_TestQuery, 69, 18, 2) -- (name, parent, xcoord, ycoord, maxletters)
	-- NPGV_TestQueryEditBox4:SetText('')
	
------------------------------------------------------------------
-- > Functions
------------------------------------------------------------------	
	
	local Version = GetAddOnMetadata('npGemViewer', 'Version')
	
	local function TextColor(msg, color) -- Colors a message
	local a = color .. msg
	return a
	end
	
	local function echo(str) print('|cfffef00fnpGemViewer |cff82e2eb' .. (str or '')) end -- Local function to print addon messages
	
	local function NPGV_TestQueryHeader_OnMouseDown(self) -- Start moving query frame
		self:GetParent():StartMoving()
	end
		
	local function NPGV_TestQueryHeader_OnMouseUp(self) -- Stop moving query frame
		self:GetParent():StopMovingOrSizing()
	end
	
	local function NPGV_TestQuery_CloseSound() -- Sound on query frame show
		PlaySound('INTERFACESOUND_CHARWINDOWCLOSE')
	end
	
	local function NPGV_TestQuery_OpenSound() -- Sound on query frame hide
		PlaySound('INTERFACESOUND_CHARWINDOWOPEN')
	end
	
	local function QueryClearButton_OnPress() -- Clears index edit boxes
		NPGV_TestQueryEditBox1:SetText('')
		NPGV_TestQueryEditBox2:SetText('')
		NPGV_TestQueryEditBox3:SetText('')
		NPGV_TestQueryEditBox4:SetText('')
		if
		GetCurrentKeyBoardFocus() == NPGV_TestQueryEditBox1 or
		GetCurrentKeyBoardFocus() == NPGV_TestQueryEditBox2 or
		GetCurrentKeyBoardFocus() == NPGV_TestQueryEditBox3 or
		GetCurrentKeyBoardFocus() == NPGV_TestQueryEditBox4
		then GetCurrentKeyBoardFocus():ClearFocus()
		end
	end
	
	local function QueryGoButton_OnPress() -- Outputs test query message
	
		local function CompletionError()
			echo((TextColor('ERROR: ', error_red)) .. (TextColor('Please fill all index areas.', echo_blue)))
		end
		
		local function IndexIsNilError()
			echo((TextColor('ERROR: ', error_red)) .. (TextColor('Index is empty.', echo_blue)))
		end
		
		local function ReturnedBlank()
			echo((TextColor('ERROR: ', error_red)) .. (TextColor('Successfully indexed ID but link returned nil. Try again. ', echo_blue)))
		end
		
		local e = NPGV_TestQueryEditBox1:GetNumber()
		local q = NPGV_TestQueryEditBox2:GetNumber()
		local c = NPGV_TestQueryEditBox3:GetNumber()
		local id = NPGV_TestQueryEditBox4:GetNumber()
		
		if e ~= 0 then
			if q ~= 0 then
				if c ~= 0 then
					if id ~= 0 then
						local gem_id = NPGV_GEMS[e][q][c][id]
						if gem_id == 0 then
							IndexIsNilError()
						else
						local _, gem_link = GetItemInfo(gem_id)
						if gem_link == nil then
							ReturnedBlank()
						else
						echo(gem_link) end
						-- echo('Era: ' .. e)
						-- echo('Quality: ' .. q)
						-- echo('Color: ' .. c)
						-- echo('Index: ' .. id)
						end
					else
					CompletionError() end
				else
				CompletionError() end
			else
			CompletionError() end
		else
		CompletionError() end
	end
		-- echo('|cffff2020ERROR |cff82e2ebPlease fill all index areas.')
	-- |cffff2020 -- RED
	-- |cfffef00f -- Default
	
	local function toggleQuery() -- Toggles query frame visiblity
		if NPGV_TestQuery:IsShown()
			then NPGV_TestQuery:Hide()
			else NPGV_TestQuery:Show()
		end
	end
	
	local function TodoGeneral() -- Prints todo general matrix
		for i=1, 10 do
			if TODO_GENERAL[i] ~= nil
				then echo(TODO_GENERAL[i])
			end
		end
	end
	
	local function TodoGems() -- Prints todo gems matrix
		for i=1, 10 do
			if TODO_GEMS[i] ~= nil
				then echo(TODO_GEMS[i])
			end
		end
	end
	
	local function help() -- Help message triggered on /help
		echo(npgvL.helpToggle)
		echo(npgvL.helpTodo)
	end
		
	local function slashhelp() -- Help message triggered on any unregistered slash command
		echo(npgvL.helpParameters)
	end
	
	local function todo() -- Help message triggered on /npgv todo
		echo(npgvL.todoParameters)
		echo('gen: General todo.')
		echo('gem: Gems matrix todo.')
	end
	
		SLASH_NOPPOGEMVIEWER1, SLASH_NOPPOGEMVIEWER2, SLASH_NOPPOGEMVIEWER3 = '/npgv', '/npgemviewer', '/noppogemviewer'
	function SlashCmdList.NOPPOGEMVIEWER(msg, editbox)
		msg = strlower(msg)
		if msg == 'toggle' then toggleQuery()
		elseif msg == 'todo' then todo()
		elseif msg == 'todo gen' then TodoGeneral()
		elseif msg == 'todo gem' then TodoGems()
		elseif msg == 'help' then help()
		else slashhelp() end
	end
	
------------------------------------------------------------------
-- > Scripts
------------------------------------------------------------------
	
	-- Test Query
	NPGV_TestQuery:SetScript('OnShow', NPGV_TestQuery_OpenSound)
	NPGV_TestQuery:SetScript('OnHide', NPGV_TestQuery_CloseSound)
	
	-- Test Query Header
	NPGV_TestQueryHeader:SetScript('OnMouseDown', NPGV_TestQueryHeader_OnMouseDown)
	NPGV_TestQueryHeader:SetScript('OnMouseUp', NPGV_TestQueryHeader_OnMouseUp)
	
	-- Test Query Clear Button
	NPGV_TestQueryClearButton:SetScript('OnClick', QueryClearButton_OnPress)
	
	-- Test Query Go Button
	NPGV_TestQueryGoButton:SetScript('OnClick', QueryGoButton_OnPress)
	
	-- Test Query EditBoxes
	NPGV_TestQueryEditBox1:SetScript('OnEscapePressed', EditBox_ClearFocus)
	NPGV_TestQueryEditBox1:SetScript('OnEditFocusLost', EditBox_ClearHighlight)
	NPGV_TestQueryEditBox1:SetScript('OnEditFocusGained', EditBox_HighlightText)
	
	NPGV_TestQueryEditBox2:SetScript('OnEscapePressed', EditBox_ClearFocus)
	NPGV_TestQueryEditBox2:SetScript('OnEditFocusLost', EditBox_ClearHighlight)
	NPGV_TestQueryEditBox2:SetScript('OnEditFocusGained', EditBox_HighlightText)
	
	NPGV_TestQueryEditBox3:SetScript('OnEscapePressed', EditBox_ClearFocus)
	NPGV_TestQueryEditBox3:SetScript('OnEditFocusLost', EditBox_ClearHighlight)
	NPGV_TestQueryEditBox3:SetScript('OnEditFocusGained', EditBox_HighlightText)
	
	NPGV_TestQueryEditBox4:SetScript('OnEscapePressed', EditBox_ClearFocus)
	NPGV_TestQueryEditBox4:SetScript('OnEditFocusLost', EditBox_ClearHighlight)
	NPGV_TestQueryEditBox4:SetScript('OnEditFocusGained', EditBox_HighlightText)
	
------------------------------------------------------------------
-- > END
------------------------------------------------------------------












