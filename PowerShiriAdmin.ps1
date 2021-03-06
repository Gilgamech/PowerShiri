# .\PowerShiriAdmin.ps1 Build: 1 2016-05-08T16:02:15 Copyright Gilgamech Technologies	
	
	Function New-DevFunction 
	{
		Param(
		[Parameter(Mandatory=$True,Position=1)]
		[string]$Filename,
		[string]$Copyright =" Copyright Gilgamech Technologies" #Default to GT ;)
		)
		$build = 1
		write-host -f green "$Filename build $build created."
	
		$filecontents = "# " + $Filename  + " Build: " + $build + " " + (get-date -f s) + $Copyright 
		$filecontents += "StringLiteral"

		$filecontents > $Filename

		#Copy to builds folder with build number appended as extension.
		if (!(test-path .\builds)) {md .\Builds}
		copy $Filename .\builds\$Filename.$build

	} #end New-DevFunction

	
Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[string]$Filename = "New-Module.ps1",
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[int]$LineNumber = 1,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function

	

	
Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[string]$Filename = "New-Module.ps1",
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[int]$LineNumber = 1,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function

	
Function New-Function {

Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[Parameter(Position=1)]
		[string]$Filename = "New-Module.ps1",
		[Parameter(Position=2)]
		[int]$LineNumber = 1,
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function
	
Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[Parameter(Position=1)]
		[string]$Filename = "New-Module.ps1",
		[Parameter(Position=2)]
		[int]$LineNumber = 1,
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function

	
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[string]$Filename = "New-Module.ps1",
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[int]$LineNumber = 1,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function
.SYNOPSIS

Function New-Function {
#Copies this function into a file at the specified line number.
#Add in copyright and build for each function (FLAG)
<#
.SYNOPSIS
    Writes a new function to a file.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 5/8/2016
.EXAMPLE
    New-Function .\PowerShiriAdmin.ps1 289 -nos
#>
	[CmdletBinding()]
	Param(
		[Parameter(Position=1)]
		[string]$Filename = "New-Module.ps1",
		[Parameter(Position=2)]
		[int]$LineNumber = 1,
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function
    Returns PowerGIL version number, notes, and Function list.
.DESCRIPTION
    Author   : Stephen Gillie
    Last edit: 4/10/2016
.EXAMPLE
    Get-PowerGILVersion - Notes
#>
	[CmdletBinding()]
	Param(
		[string]$Filename = "New-Module.ps1",
		[string]$FunctionName = "New-Function",
		[string]$SourceModule = $PowerGIL,
		[int]$LineNumber = 1,
		[switch]$NoSpace
#		[string]$Copyright =" Copyright Gilgamech Technologies", #Default to GT ;)
#		[int]$build = 1,
#		[string]$dtstamp = (get-date -f s)
	)
	$Spacing = "
	"
	if (test-path $Filename) {
		$Filecontents = gc $Filename
	} else {
	Write-Verbose "File not found."
	Return 0
	Break
	}

	#	$functioncontents = "# $Filename Build: $build $dtstamp $Copyright
#	
#	"
	$functioncontents2 = Find-Function -FunctionName $FunctionName	
	$filecontents[0.. ($LineNumber -2)] > $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$functioncontents2 >> $Filename
	if (!($NoSpace)){
		$Spacing >> $Filename
	}
	$filecontents[($LineNumber -1 ) ..($Filecontents.length)] >> $Filename

	
} #end New-Function

