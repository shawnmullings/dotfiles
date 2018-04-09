
![banner](http://i0.wp.com/www.shawnmullings.com/wp-content/uploads/2016/05/dotfiles.png?w=500 "dotfiles")

## /.dotfiles

This repo serves as a collection of all the dotfiles I am currently using. The "install.sh" script will install all of the dotfiles and associated modules via Homebrew.

### Dependencies ###

Dependencies will be installed via Homebrew during the install process. You can find a list of packages within "brew.sh" file.

### Installation ###

From terminal navigate to git repo folder. Run the following command:

```bash
    $ ./install
```

### Updates ###

From terminal navigate to git repo folder. Run the following command:

```bash
    $ shellupdate
```

### Credits ####

Most stuff is from [https://github.com/jamestomasino](James Tomasino), but a lot of the aliases and functions are collected from around the web. If you notice your idea in my repo somewhere and want credit, send me a note. Once I'm done rolling my eyes, I'll post a link or something.

## Function List

### Shortcut Functions ###

    cdf - Change directory to current finder window
    f - open current terminal directory in finder.
    ~ - Go home
    path - Echos all executable paths     
    z {Folder name} - Autocompletes path using the folder name. Learns as navigate using terminal. Type z and Doc and it will autocomplete to Document folder.
    extract - automatically unzips file based on extension.
    old {file name} - appends .old to the file name.
    battery - Outputs battery percentage left.
    flatten - Flattens files from subdirectories into current directory. If files already exist, you'll be prompted to decide if you want to overwrite or not.
    update - Updates brew, ruby, gisty, and pip
    zipf {folder} - Creates zip from folder
    tree - Generates a tree view from the current directory
    fext {extension} - Recursively searches for all files with the matching extension using the function findfilesbyextension
    dext  {extension} - Recursively deletes files with the specified extension using the function deletefilesbyextension
    .. - Up one directory
    .2 - Up two directories
    .3 - Up three directories
    .4 - Up four directories
    .5 - Up five directories

### Admin ###

    members - Outputs all members of admin group
    confirm - Prompts confirmation message before proceeding. Useful for embedding in other functions.
    systemupdate - updates the mac system, brew, and brew installed software
    update - Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
    hibernate - Ubuntu Only
    lock - locks the system when you're walking away

### Development ###

    server - spins up simple server in the current folder on terminal and opens in default browser
    phpserver - spins up simple server with php support
    netserver - spins up server with .NET support using mono
    cdfs - changes to current folder in finder and spins up simple server
    linkapache {source path} {name} - Assumes you have MAMP installed - creates a symlink for the source path with the name in the htdocs folder in MAMP's apache folder.
    imgsz {image filepath} - Returns height and width of image file.

### Git ###

    lazygit "{Commit Message}" - My favorite shortcut for git. Adds all changes, commits it with the message you specify, and pushes to the current branch.
    gs - equivilant of git status
    gb - equivilant of git branch
    gap - equivilant of git add -p
    ga - equivilant of git add
    gc - equivilant of git commit --verbose
    gca - equivilant of git commit -a --verbose
    gcm - equivilant of git commit -m
    gcam - equivilant of git commit -a -m
    gst - equivilant of git stash
    gstl - equivilant of git stash list
    gsta - equivilant of git stash apply
    gsts - equivilant of git stash save
    gls - equivilant of log --pretty=format:'%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]' --decorate --date=short
    gremove - equivilant of find . -name '.git' -exec rm -rf {} \;
    gitexport - Creates an export from git without the git files. Useful for deployment or sending to a vendor.
    parse_git_branch - Return current git branch
    gitstaged - Return number of staged files in folder
    gitmodified - Return number of modified files in folder
    gituntracked - Return number of untracked files in folder
    gitpullall - Pulls all remotes

## Aliases

### General ###

    forcast - Get local weather forcast via terminal
    cleanup - Deletes .DS_Store and .thumbs files from current folder
    reload - reloads bash without exiting terminal
    shellupdate - updates dot files to latest
    emptytrash - Empties trash
    lock - locks computer
    ss - activates screensaver
    dext {file filename} - deletefilesbyextension
    fext {file extension} - findfilesbyextension
    f - opens current folder in finder window
    numFiles - Counts non-hidden files in folder
    cpu_hogs - displays applications with high CPU usage
    db - Switches to dropbox folder
    dl - Switches to downloads folder
    dt - Switches to desktop folder

### Clipboard ###

    pubkey - copies ssh key to clipboard
    cpwd - copies current path to clipboard
    c - Clears the clipboard of any new lines (\n)
    cl - Copy output of last command to clipboard
    cwd - Copies current terminal path to clipboard
    pubkey - Pipe public key to my clipboard.
    prikey - Pipe private key to my clipboard.

### Network ###

    myip - Public facing IP Address
    netCons - Show all open TCP/IP sockets
    flushDNS - Flush out the DNS Cache
    lsock - Display open sockets
    lsockU - Display only open UDP sockets
    lsockT - Display only open TCP sockets
    ipInfo0 - Get info on connections for en0
    ipInfo1 - Get info on connections for en1
    openPorts - All listening connections
    showBlocked - All ipfw rules inc/ blocked IPs
    httpstatuscode {url} - outputs http status code for url
    whois - Enhanced WHOIS lookups

### System ###

    usage - Grabs the disk usage in the current directory
    totalusage - Gets the total disk usage on your machine
    partusage - Shows the individual partition usages without the temporary memory values
    most - Gives you what is using the most space. Both directories and files. Varies on current directory
    show - Show hidden files in Finder
    hide - Hide hidden files in Finder
    hidedesktop - Hide all desktop icons (useful when presenting)
    showdesktop - Show all desktop icons (useful when presenting)
    cleanupLS - Clean up LaunchServices to remove duplicates in the "Open With" menu
    stfu - mutes volume
    pumpitup - max volume (7) when you need to drown out everything
    headphone - sets volume to 4 which is my personal preference  

### Development ###
    apacheEdit - Edit httpd.conf
    apachestart - Start apache server
    apachestop - Stop apache server
    apacheRestart - Restart Apache
    editHosts - Edit /etc/hosts file
    herr - Tails HTTP error logs
    apacheLogs - Shows apache error logs
    httpHeaders - Grabs headers from web page
    urlencode - URL-encode strings

## Assumptions

 Assumes you have the browsers installed:

    ff - Opens a new instance of Firefox for development testing

    chrome - Opens a new instance of Chrome for development testing

    opera - Opens a new instance of opera for development testing

## Pull requests welcome!

Spotted an error? Something doesn't make sense? Send me a [pull
request](https://github.com/shawnmullings/dotfiles/pulls)! Please avoid making
stylistic changes though -- they are unlikely to be accepted. Thanks!

## License

[Apache License 2.0](./LICENSE)
