if status is-interactive ;and command -q curl
    set -l -- opts --skip-existing
    abbr -a curl "curl $opts"
    abbr -a --command curl -- '--se' '--skip-existing'
    abbr -a --command curl -- '--nc' '--no-clobber'
    abbr -a --command curl -- '--O' '--remote-name-all'
end
