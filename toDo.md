# ToDo list

- [x] Change usermod in accordance to the information/installation split
- [x] Add fish config installation to bootstrap
- [x] Add kde config installation to bootstrap
    - [x] Add kde profile pic
- [x] Add rclone config installation to bootstrap
    - [x] Add driveBiSync.sh installation to bootstrap
        - [x] Add driveBiSync crontab installtion to bootstrap
- [x] Add summary before installation
- [ ] Add /etc/ config installations to bootstrap
    - [x] locale.conf
    - [x] /etc/zypp/zypp.conf
    - [ ] /etc/sudoers
        - [x] Ask user
        - [x] Copy file
        - [ ] Give root file ownership and exclusive read/write access to copied file
- [x] Ask user if they want to install steam
- [x] Add kde panel config install
- [ ] Make /etc files owner root but everyone else can still read (except for sudoers file)
- [x] Add profile pic install
- [ ] Make more backups
- [ ] Add diff command in information phase so the user can see if the config file defaults changed.
- [ ] switch to symlinks for some usecases
- [x] Make the package install command read the arguments from a file instead of writing them into the script. (to make it easier to edit)
    Could either store all packages for all distros in one file (packages.txt) like
    ```
    openSuse=package1, package2, package3..
    archLinux=package1, package2, package3..
    ```
    _or_ make a different file for each distro. The first would give a lot better overview, but the second wouldn't be as overwhelming.
    That being said, I think I will do the first method.