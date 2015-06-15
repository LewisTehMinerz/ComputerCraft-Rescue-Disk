term.setBackgroundColor( colors.green )
term.setTextColor( colors.green )
term.setCursorPos( 1,1 )
for i = 1, _w * _h do
write( "." )
end
term.clear()
term.setCursorPos( 1, 1 )
if term.isColor() then
    term.setTextColor( colors.blue )
    print([[
            #
           #C#
          # C #
         #     #
         #     #
          # R #
           #D#
            #
    ]])
en
sleep( 5 )
term.clear()
term.setCursorPos( 1, 1 )
print( "CCRD is now allowing access to your computer via a built in shell." )
if term.isColour() then
	promptColour = colours.yellow
	textColour = colours.white
	bgColour = colours.black
else
	promptColour = colours.white
	textColour = colours.white
	bgColour = colours.black
end
local tCommandHistory = {}
while not bExit do
    term.setBackgroundColor( bgColour )
    term.setTextColour( promptColour )
    write( shell.dir() .. "> " )
    term.setTextColour( textColour )

    local sLine = read( nil, tCommandHistory )
    shell.run( sLine )
end