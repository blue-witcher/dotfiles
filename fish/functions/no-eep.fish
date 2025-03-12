function no-eep --wraps='systemd-inhibit --what sleep --who "$USER" --why no-eep -- sleep infinity' --description 'alias no-eep systemd-inhibit --what sleep --who "$USER" --why no-eep -- sleep infinity'
  systemd-inhibit --what sleep --who "$USER" --why no-eep -- sleep infinity $argv
        
end
