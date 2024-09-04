# OpenSuse
1. Run bootstrap
2. zypper install opi
3. run "opi codecs"
4. Change priority in yast of packman repo (I only want codecs from the packman repo and nothing else, that being said I don't know if this is a good thing to do or not)
5. zypper dup --from "packman repository" --allow-vendor-change
6. Set plasma keyboard layout to EurKey
7. Set up kde hotkeys
    1. Meta + Q to close windows
    2. Meta + Up to maximize
    3. etc.
8. Install prop. nvidia drivers (From the repo, when I tried downloading from nvidias website directly and finally got it working it only worked on x11 and idk that's just too much stress, but it sucks having to use an old drivers version). 'zypper in nvidia-drivers-G06'
9. disable kwallet
