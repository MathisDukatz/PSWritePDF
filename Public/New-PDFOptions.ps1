﻿function New-PDFOptions {
    param(
        [nullable[float]] $MarginLeft,
        [nullable[float]] $MarginRight,
        [nullable[float]] $MarginTop,
        [nullable[float]] $MarginBottom,
        [ValidateScript( { & $Script:PDFPageSizeValidation } )][string] $PageSize
    )

    [PSCustomObject] @{
        Type     = 'Options'
        Settings = @{
            Margins  = @{
                Left   = $MarginLeft
                Right  = $MarginRight
                Top    = $MarginTop
                Bottom = $MarginBottom
            }
            PageSize = $PageSize
        }
    }
}

Register-ArgumentCompleter -CommandName New-PDFOptions -ParameterName PageSize -ScriptBlock $Script:PDFPageSize