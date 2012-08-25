let s:plugin_path = expand('<sfile>:p:h:h')
let s:play_cmd    = 'aplay'

function! TypewriterSound()
    if !exists("g:old_linenumber")
        let g:old_linenumber = line(".")
    endif
    let linenumber = line(".")

    if linenumber == g:old_linenumber
        let l:sound = 'Key.wav'
    else
        let l:sound = 'Return.wav'
    endif

    let full_cmd = printf('!%s %s/audio/%s > /dev/null 2>&1 &', s:play_cmd, s:plugin_path, l:sound)
    silent! exec full_cmd

    let g:old_linenumber = line(".")
endfunction

autocmd CursorMovedI * call TypewriterSound()

