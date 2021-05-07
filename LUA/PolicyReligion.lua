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
		-- Verhogen van de Faith met 10 + 1,5 x je culture yield.
		local faithBonus = 10 + math.floor( ( 1.5 * player:GetTotalJONSCulturePerTurn() ) + 0.5 )
		player:ChangeFaith(faithBonus)
	end
end

GameEvents.PlayerAdoptPolicy.Add(CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion)
GameEvents.PlayerAdoptPolicyBranch.Add(CrispyJuice_KoosRabbers_TimeForChange_PolicyReligion)