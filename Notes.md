YouCompleteMe (vim plugins)

## :YcmDiags command

Calling this command will fill Vim's locationlist with errors or warnings if any were detected in your file and then open it. If a given error or warning can be fixed by a call to :YcmCompleter FixIt, then (FixIt available) is appended to the error or warning text. See the FixIt completer subcommand for more information.

NOTE: The absence of (FixIt available) does not strictly imply a fix-it is not available as not all completers are able to provide this indication. For example, the c-sharp completer provides many fix-its but does not add this additional indication.

The g:ycm_open_loclist_on_ycm_diags option can be used to prevent the location list from opening, but still have it filled with new diagnostic data. See the Options section for details.

## The :YcmShowDetailedDiagnostic command

This command shows the full diagnostic text when the user's cursor is on the line with the diagnostic.
