--	Created by: Sean Korzdorfer
--	Created on: 02/23/13 08:56:00


-- ! CONFIGURE: Path to directory containing notes to import.
set thePath to "path:to:dir"
-- ! CONFIGURE: Path to directory to archive txt files.
set archivePath to "path:to:dir"
-- ! CONFIGURE: The VoodooPad Document to open
set padFile to "path:to:dir:testPad.vpdoc"
-- ! CONFIGURE: The VoodooPad Tag to give the new pages
set theTag to "Inbox"

tell application "Finder"
	open padFile
	set fileList to every file of folder thePath
	repeat with x in fileList
		set theFile to thePath & ":" & name of x
		-- NB: Had to use this exact syntax to get it to work. Odd.
		set file_id to open for access file theFile
		set noteText to (read file_id)
		-- Strip the '.txt' from the end of the text file name.
		set noteName to my findAndReplace(".txt", "", name of x)
		close access file_id
		tell application "VoodooPad"
			tell document 1 to create new page with name noteName with content noteText
			
			tell document 1 to tell page noteName to add category named theTag
		end tell
		move theFile to archivePath
	end repeat
end tell


on findAndReplace(tofind, toreplace, TheString)
	set ditd to text item delimiters
	set text item delimiters to tofind
	set textItems to text items of TheString
	set text item delimiters to toreplace
	if (class of TheString is string) then
		set res to textItems as string
	else -- if (class of TheString is Unicode text) then
		set res to textItems as Unicode text
	end if
	set text item delimiters to ditd
	return res
end findAndReplace
