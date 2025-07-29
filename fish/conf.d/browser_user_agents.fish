if status is-interactive
    set -g firefox_user_agent  'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0'
    set -g chrome_user_agent   'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'
    abbr -a --position anywhere '$fagent' '$firefox_user_agent'
    abbr -a --position anywhere '$cagent' '$chrome_user_agent'
end
