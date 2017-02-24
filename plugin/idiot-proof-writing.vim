if exists('g:loaded_idiot_proof_write_protection')
  finish
endif
let g:loaded_idiot_proof_write_protection = 1

autocmd BufWritePost * call WriteCheck()

let g:lastTimeSaved = 0

function WriteCheck()
  let currentTimestamp = str2nr(system("date +%s"))

  if currentTimestamp - g:lastTimeSaved < 5
    call DisplayIdiot()
    call DisplayIdiot()
    call DisplayIdiot()
  endif

  let g:lastTimeSaved = currentTimestamp
endfunction

" Displays 'baka' japanese for idiot
function DisplayIdiot()
  echo '                                        '
  echo '                      m                 '
  echo '            # #        #           m    '
  echo '       "m  "m      "mmm#"""#       #    '
  echo '       #     #        m"   #       #    '
  echo '     m"       #      m"   #             '
  echo '    "         "    m"   "m"        #    '
  echo '                                        '
endfunction
