gd.engineer = {}

function gd.engineer.testOnAddToWorld(objectId)
	UI.Notify("Still Running")
	entityId = objectId
	entity = Entity.Get(objectId)
	--spawn = Character.Create("records/skills/playerclassengineer/pets/pet_sentry_01.dbr")

	count = 0
	Script.RegisterForUpdate(entityId, "Update", 10)
	--UI.Notify("Update Registered")
end


function Update()
	count = count+1
	coords = Game.GetLocalPlayer():GetCoords()
	entity:SetCoords(coords)
	if (count > 1000) then
		Script.UnregisterForUpdate(entityId, "Update")
		entity:Destroy()
	end
end
