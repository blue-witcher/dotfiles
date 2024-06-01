# dotfiles

This is my dotfiles repository where I eventually want to have all my user and system dotfiles and also a script to install them on your system interactively :3

## Sudoers
The only change to the sudoers file is the one from [this article](https://www.suse.com/support/kb/doc/?id=000016906) under section "Configuring who's password to use" > "2. For non-root user access by entering their own password".

## Zypp.conf
The only change to zypp.conf is the line `solver.onlyRequires = true`
`solver.dupAllowVendorChange = false` is also set (and important because of packman!) but I didn't set it. (I think it got set automatically by `opi codecs`)
