rem you need to create a vim session with the command "C:\Program Files (x86)\Vim\vim73\gvim.exe" --servername tortoisesvn
"C:\Program Files (x86)\Vim\vim73\gvim.exe" --servername tortoisesvn --remote-send ":tabnew<cr>:e %1<cr>:vert diffsplit %2<cr><c-w><right>" 