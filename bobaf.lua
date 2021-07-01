print("Moskal")
	   for k, v in pairs(player.GetAll()) do
       if v == LocalPlayer() then continue end

		surface.SetTextColor( 255, 255, 255, 255 )
		if table.Count( v:GetWeapons()) < 1  then continue end

			local x1,y1,x2,y2 = Get2DBounds(v);
			local diff = math.abs(x2 - x1);
			local diff2 = math.abs(y2 - y1);
				local wep2 = v:GetActiveWeapon()
		if ( !IsValid( wep2 ) ) then 
						surface.SetDrawColor(255,255,255,255)
         surface.SetTextPos(x1,y2)
		--surface.SetFont("DermaDefault");
		--surface.SetFont("HL2MPTypeDeath");
       
        surface.DrawText("Unarmed");
    end
			local wep = v:GetActiveWeapon()
		if ( IsValid( wep ) ) then
      local reload = v:GetActiveWeapon():GetActivity()
          --print(reload)
		local tw,  th = surface.GetTextSize(v:GetActiveWeapon():GetClass());
		surface.SetDrawColor(255,255,255,255)
         surface.SetTextPos(x1,y2)
		
		
       surface.SetFont("HL2MPTypeDeath");
       if v:GetActiveWeapon():GetClass() == "weapon_smg1" then
        surface.DrawText("/"); end
        if v:GetActiveWeapon():GetClass() == "fas2_ak47" then
        surface.DrawText("."); end
                       if v:GetActiveWeapon():GetClass() == "weapon_crossbow" then
        surface.DrawText("1"); end
               if v:GetActiveWeapon():GetClass() == "weapon_ar2" then
        surface.DrawText("2"); end
               if v:GetActiveWeapon():GetClass() == "weapon_rpg" then
        surface.DrawText("3"); end
               if v:GetActiveWeapon():GetClass() == "weapon_pistol" then
        surface.DrawText("-"); end
               if v:GetActiveWeapon():GetClass() == "weapon_frag" then
        surface.DrawText("4"); end
               if v:GetActiveWeapon():GetClass() == "weapon_crowbar" then
        surface.DrawText("6"); end
                       if v:GetActiveWeapon():GetClass() == "weapon_stunstick" then
        surface.DrawText("!"); end
                       if v:GetActiveWeapon():GetClass() == "weapon_physgun" then
        surface.DrawText(","); end
                        if v:GetActiveWeapon():GetClass() == "weapon_physcannon" then
        surface.DrawText(","); end
                         if v:GetActiveWeapon():GetClass() == "weapon_slam" then
        surface.DrawText("*"); end
                                 if v:GetActiveWeapon():GetClass() == "weapon_shotgun" then 
        surface.DrawText("0"); end
        surface.SetFont("DermaDefault");
                                if v:GetActiveWeapon():GetClass() == "gmod_camera" then
        surface.DrawText("Camera"); end
         if v:GetActiveWeapon():GetClass() == "gmod_tool" then
        surface.DrawText("Tool Gun");
        end
    end 
end
