proc weather() {.noReturn.} =
  echo "Is always sunny."
  system.quit(errorcode=QuitSuccess)

weather()