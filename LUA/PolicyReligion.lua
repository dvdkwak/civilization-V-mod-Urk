-- PolicyReligion
-- Author: King Augurk B.V., based on GPuzzle's Kingdom of Kent
-- DateCreated: 4/9/2020 10:58:13 PM
--------------------------------------------------------------
--------------------------------------------------------------
-- Variables
--------------------------------------------------------------
local civilizationID = GameInfoTypes["CIVILIZATION_URK"]

--========================================================================================================================
-- TIME FOR CHANGE
--========================================================================================================================
-- CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion
--------------------------------------------------------------
function CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion(playerID)
	local player = Players[playerID]
	if (player:IsAlive() and player:GetCivilizationType() == civilizationID) then
		local faithBonus = 12
		player:ChangeFaith(faithBonus)
	end
end

GameEvents.PlayerAdoptPolicy.Add(CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion)
GameEvents.PlayerAdoptPolicyBranch.Add(CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion)