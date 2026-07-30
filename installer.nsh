!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple TV" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\apple-tv" "" "URL:Apple TV"
  WriteRegStr HKCU "Software\Classes\apple-tv" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-tv\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple TV"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\apple-tv"
!macroend
