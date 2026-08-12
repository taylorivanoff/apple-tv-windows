; Startup + apple-tv:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple TV" '"$INSTDIR\Apple TV.exe"'
  WriteRegStr HKCU "Software\Classes\apple-tv" "" "URL:Apple TV"
  WriteRegStr HKCU "Software\Classes\apple-tv" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-tv\shell\open\command" "" '"$INSTDIR\Apple TV.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple TV"
  DeleteRegKey HKCU "Software\Classes\apple-tv"
!macroend
