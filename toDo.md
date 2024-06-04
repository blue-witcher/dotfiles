# ToDo list

- [x] Change usermod in accordance to the information/installation split
- [x] Add fish config installation to bootstrap
- [x] Add kde config installation to bootstrap
    - [ ] Add kde profile pic
- [x] Add rclone config installation to bootstrap
    - [x] Add driveBiSync.sh installation to bootstrap
        - [x] Add driveBiSync crontab installtion to bootstrap
- [ ] Add summary before installation
- [ ] Add /etc/ config installations to bootstrap
    - [x] locale.conf
    - [x] /etc/zypp/zypp.conf
    - [ ] /etc/sudoers
        - [x] Ask user
        - [x] Copy file
        - [ ] Give root file ownership and exclusive read/write access to copied file
- [ ] Make /etc files owner root but everyone else can still read (except for sudoers file)
- [ ] Think about whether I would rather copy all files or symlink them
- [x] Add profile pic install