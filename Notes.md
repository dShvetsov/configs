YouCompleteMe (vim plugins)

## :YcmDiags command

Calling this command will fill Vim's locationlist with errors or warnings if any were detected in your file and then open it. If a given error or warning can be fixed by a call to :YcmCompleter FixIt, then (FixIt available) is appended to the error or warning text. See the FixIt completer subcommand for more information.

NOTE: The absence of (FixIt available) does not strictly imply a fix-it is not available as not all completers are able to provide this indication. For example, the c-sharp completer provides many fix-its but does not add this additional indication.

The g:ycm_open_loclist_on_ycm_diags option can be used to prevent the location list from opening, but still have it filled with new diagnostic data. See the Options section for details.

# The :YcmShowDetailedDiagnostic command

This command shows the full diagnostic text when the user's cursor is on the line with the diagnostic.


# The :YcmShowDetailedDiagnostic command

# Command History
When you press : to enter a command, or / to start a search, you often want to edit a previous command or search. That can be done using the up and down arrow keys to scroll through the history. Then you can edit a previous line. :help :

For example, type :s and then press the up arrow key. The last command that starts with exactly what you typed will be displayed. Scroll through the history by pressing up or down. There is a history for commands, and another for searches (and more :help history). You can list the entire history using the :history command (:help :history). The command :his lists the command history, and :his / lists the search history.

In many situations, a better solution is the command-line window which you can open in two ways:

    Type q: for commands, or q/ for searches; or
    Type : or / to start entering a command or search, then press the 'cedit' key (default is Ctrl-f :help 'cedit'). 

The advantage of the command-line window is that you can use all Vim's editing power, including searching with '/' in normal mode, or using whole-line completion (:help compl-whole-line) in insert mode. After editing a command, you can:

    Press Enter to execute the current line (and close the command-line window); or
    Press Ctrl-c twice to close the command-line window (cancel). 
    
# Use ci", which means: change what inside the double quotes.

You can also manipulate other text objects in a similar way, e.g.:

    ci' - change inside the single quotes
    ciw - change inside a word
    ci( - change inside parentheses
    dit - delete inside an HTML tag, etc.
    
    also works with visual `vi"` or `vi(` or `vi{`
    
    If you want include the quates also use `va"`

