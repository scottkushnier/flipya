find . \( -path "*node_modules*" -o -path "*git*" -o -path "*dist*" -o -path "*snapshot*" \) -prune -o -type f -print > filelist.txt
