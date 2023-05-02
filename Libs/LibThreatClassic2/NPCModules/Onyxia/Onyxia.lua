if not _G.THREATLIB_LOAD_MODULES then return end -- only load if LibThreatClassic2.lua allows it
if not LibStub then return end
local ThreatLib, MINOR = LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local ONYXIA_ID = 10184
local FIREBALL_ID = 18392
local KNOCK_AWAY_ID = 19633

local phase3Text = "It seems you'll need another lesson, mortals!"

ThreatLib:GetModule("NPCCore-r"..MINOR):RegisterModule(ONYXIA_ID, function(Onyxia)
	Onyxia:RegisterTranslation("enUS", function() return {
		[phase3Text] = phase3Text,
	} end)

	Onyxia:RegisterTranslation("deDE", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("esES", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("esMX", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("frFR", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("itIT", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("koKR", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("ptBR", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("ruRU", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("zhCN", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	Onyxia:RegisterTranslation("zhTW", function() return {
		[phase3Text] = nil, -- STRING NEEDED
	} end)

	local phase3 = Onyxia:GetTranslation(phase3Text)

	function Onyxia:Init()
        self:RegisterCombatant(ONYXIA_ID, true)
		self:RegisterSpellHandler("SPELL_CAST_SUCCESS", ONYXIA_ID, FIREBALL_ID, self.Fireball)
		self:RegisterSpellHandler("SPELL_CAST_SUCCESS", ONYXIA_ID, KNOCK_AWAY_ID, self.KnockAway)
		self:RegisterChatEvent("yell", phase3, self.Phase3Start)
	end

    function Onyxia:Fireball(sourceGUID, unitId)
        self:ModifyThreat(sourceGUID, unitId, 0, 0)
	end

	function Onyxia:KnockAway(sourceGUID, unitId)
        self:ModifyThreat(sourceGUID, unitId, 0.75, 0)
	end

	function Onyxia:Phase3Start(sourceGUID, unitId)
        self:WipeRaidThreatOnMob(ONYXIA_ID)
	end
end)
