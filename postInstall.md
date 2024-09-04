# OpenSuse
1. Run bootstrap
2. zypper install opi
3. run "opi codecs"
4. Change priority in yast of packman repo (I only want codecs from the packman repo and nothing else, that being said I don't know if this is a good thing to do or not)
5. zypper dup --from "packman repository" --allow-vendor-change
