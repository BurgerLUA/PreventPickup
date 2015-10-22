local WeaponArray = {}


WeaponArray["weapon_357"] = "357"
WeaponArray["weapon_alyxgun"] = "smg1"
WeaponArray["weapon_annabelle"] = "shotgun"
WeaponArray["weapon_ar2"] = "ar2"
--WeaponArray["weapon_brickbat"] = "smg1"
--WeaponArray["weapon_bugbait"] = "357"
WeaponArray["weapon_crossbow"] = "XBowBolt"
WeaponArray["weapon_crowbar"] = "none"
WeaponArray["weapon_frag"] = "none"
--WeaponArray["weapon_physcannon"] = "none"
WeaponArray["weapon_pistol"] = "pistol"
--WeaponArray["weapon_rpg"] = "357"
WeaponArray["weapon_shotgun"] = "shotgun"
WeaponArray["weapon_smg1"] = "smg1"
--WeaponArray["weapon_striderbuster"] = "357"
WeaponArray["weapon_stunstick"] = "none"

function FuckHL2Weapons(ply,wep)

	if WeaponArray[wep:GetClass()] then
	
		local Ammo = WeaponArray[wep:GetClass()]
		
		if Ammo != "none" then
			ply:GiveAmmo(math.Rand(20,100),Ammo)
		end
		
		SafeRemoveEntity(wep)
	
		return false
	
	end
	
end

hook.Add( "PlayerCanPickupWeapon", "Fuck HL2 Weapons", FuckHL2Weapons)