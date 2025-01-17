if type -q zypper
    function huh --wraps='zypper info --provides --requires --conflicts --obsoletes --recommends --supplements --suggests' --description 'alias huh=zypper info --provides --requires --conflicts --obsoletes --recommends --supplements --suggests'
      zypper info --provides --requires --conflicts --obsoletes --recommends --supplements --suggests $argv
            
    end
end
