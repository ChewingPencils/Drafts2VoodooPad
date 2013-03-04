# Drafts to VoodooPad

## Overview

A workflow for creating new VoodooPad Pages from text files created with Drafts.app.

Methods Provided: 

- AppleScript
- Keyboard Maestro Macro
	- Runs at System Wake

Nota Bene: Due to several limitiations, this script isn't effecient as I'd like … Using Hazel is not the best idea.

## Installation

### 1. Configure the AppleScript:

- The path to a directory that Drafts.app will save text files
- The path to an archive directory for processed text files
- The name of the VoodooPad document
- The name of the VoodooPad tag

### 2. Create [Drafts App](http://agiletortoise.com/drafts) Action

Template format of the provided Drafts action:

    Date:	[[date|%Y-%m-%d_%H%M%S]]
    
    # [[title]]
    
    [[body]]
    
    ----
    
    Categories: <# @tk Add Category #>
    
To install, copy paste the following URL into mobile Safari.
    
	drafts://x-callback-url/import_action?type=dropbox&name=VoodooPad&path=/notes/to_voodoo/&filenametype=1&filename=&ext=txt&writetype=0&template=Date:[[date|%Y-%m-%d_%H%M%S]]#%20[[title]][[body]]----Categories:%20<#%20@tk%20Add%20Category%20#>
