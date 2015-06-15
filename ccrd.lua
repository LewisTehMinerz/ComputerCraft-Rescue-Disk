local _dsk = peripheral.find( "disk_drive" )
local _w, _h = term.getSize()

--# Handle Computers without disk_drive peripheral #--
if not _dsk then
    error( "ComputerCraft Rescue Disk was unable to find a disk drive.", 0 )
end

if term.isColor() then
    term.setBackgroundColor( colors.green )
    term.setTextColor( colors.green )
    term.setCursorPos( 1,1 )
    for i = 1, _w * _h do
        write( "." )
    end
    term.clear()
    term.setCursorPos( 1, 1 )
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
end
if _dsk.hasData() then
    term.setCursorPos( 9, 1 )
    print( "Currently Installing Rescue" )
    term.setCursorPos( 9, 2 )
    print( "Disk. Please wait..." )
    fs.copy( "ccrddsk", "/disk/startup" )
    term.setCursorPos( 9, 3 )
    print( "Rescue disk has finished." )
else
    printError( "CCRD has found non-writable/no disk. Please insert a disk and try again." )
    return
end