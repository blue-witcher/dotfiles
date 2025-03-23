function noeep --wraps='systemd-inhibit --what sleep --who "no eep" --why "" -- sleep infinity' --description 'alias noeep systemd-inhibit --what sleep --who "no eep" --why "" -- sleep infinity'
  systemd-inhibit --what sleep --who "no eep" --why "$argv" -- sleep infinity
        
end
