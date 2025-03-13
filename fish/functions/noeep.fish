function noeep --wraps='systemd-inhibit --what sleep --who "$USER" --why "no eep" -- sleep infinity' --description 'alias noeep systemd-inhibit --what sleep --who "$USER" --why "no eep" -- sleep infinity'
  systemd-inhibit --what sleep --who "$USER" --why "no eep" -- sleep infinity $argv
        
end
