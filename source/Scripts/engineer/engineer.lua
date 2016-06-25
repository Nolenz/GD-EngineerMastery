gd.engineer = {}

function gd.engineer.testOnAddToWorld(objectId)
	UI.Notify("Still Running")
	entityId = objectId
	entity = Entity.Get(objectId)
	--spawnOne = Character.Create("records/skills/playerclassengineer/pets/flamer_script_test.dbr")

	Script.RegisterForUpdate(entityId, "Update", 10)
end

--function gd.engineer.testOnDelete()
--	spawnOne:Destroy()
--end

function Update()
	coords = Game.GetLocalPlayer():GetCoords()
	entity:SetCoords(coords)
--	spawnOne:SetCoords(coords)
--	if (count > 1000) then
--		Script.UnregisterForUpdate(entityId, "Update")
--		entity:Destroy()
--	end
end
