if status is-interactive ;and command -q curl
    set -l -- opts -g -f --proto-default https -L --no-clobber --skip-existing
    abbr -a curl "curl $opts"
    abbr -a --command curl -- '--se' '--skip-existing'
    abbr -a --command curl -- '--nc' '--no-clobber'
    abbr -a --command curl -- '--O' '--remote-name-all'
    abbr -a --command curl -- '--od' '--output-dir'
    abbr -a --command curl -- '--rme' '--remove-on-error'
end
