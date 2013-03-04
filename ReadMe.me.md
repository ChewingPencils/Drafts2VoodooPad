# Drafts to VoodooPad

## Overview

Create new VoodooPad Pages from text files in a specific Dropbox Directory.

Methods Provided: 

- AppleScript
- Keyboard Maestro Macro
	- Runs at System Wake

Nota Bene: Due to several limitiations, this script isn't effecient as I'd like. This is the reason a Hazel rule is not provided.

## Installation

### 1. Configure the AppleScript:

- The path to a directory to watch
- The path to a directory to archive the text files after proccessing
- The name of the VoodooPad document
- The name of the tag to add to the VoodooPad pages the script creates.

### 2. Create [Drafts App](http://agiletortoise.com/drafts) Action

Template format of the provided Drafts action:

    Date:	[[date|%Y-%m-%d_%H%M%S]]
    
    # [[title]]
    
    [[body]]
    
    ----
    
    Categories: <# @tk Add Category #>
    
To install, copy paste the following URL into mobile Safari.
    
	drafts://x-callback-url/import_action?type=dropbox&name=VoodooPad&path=/notes/to_voodoo/&filenametype=1&filename=&ext=txt&writetype=0&template=Date:[[date|%Y-%m-%d_%H%M%S]]#%20[[title]][[body]]----Categories:%20<#%20@tk%20Add%20Category%20#>