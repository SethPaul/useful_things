### Shell 
#### Shell Aliases -

Allow you to reference directories no matter where you are in tree without having to type out full path.
from 
```export ws=~/workspace``` : ```$ws``` becomes ```~/workspace``` 
or 
```alias jnb="jupyter-notebook"``` : ```jnb``` becomes ```jupyter-notebook```

add aliases to ```~/.zsh_profile``` / ```~/.bash_profile```/```~/.<whatever shell>_profile```:
```bash
export ws=~/workspace

export ds=$ws/DataScience
export nb=$ws/data-science-notebooks

alias jnb="jupyter-notebook"
alias ll="ls -lah"
alias snb="cd $jnb && jnb"

```
#### ls
list all files in subdirectories sorted by size: `ls -lah --recursive | less`
5 largest directories: `du -a | sort -n -r | head -n 5`
#### clear linux pagecache
`sudo sh -c 'echo 1 >/proc/sys/vm/drop_caches'`
(https://unix.stackexchange.com/questions/87908/how-do-you-empty-the-buffers-and-cache-on-a-linux-system)

#### Routing stderr and std out to a file
- Write standard out to file use `>`: `echo this > this_file.log`
- Append standard out to file use `>>`: `echo this >> this_file.log`
- Send standard error to file use `2>` (`1>` is stdout as well): `command > out 2>error`
- Send both to a file use `&>`: `command &> log`
- `>> log 2>&1` can also be used this indicates route error to standard out and both to a file

### SSH config for simplifying SSH
[Alias ssh](http://collectiveidea.com/blog/archives/2011/02/04/how-to-ssh-aliases/)
```
Host <connect_name>
HostName <host ip>
User <user>
IdentityFile <location of RSA/.pem file>
```
#### Better Shell Interface
- [iTerm2](https://www.iterm2.com/)

#### Shell reference
[explainshell.com](http://explainshell.com/explain?cmd=cat+file.txt)

### New to Mac
- [Mac keyboard shortcuts](https://support.apple.com/en-us/HT201236)
- Install zsh (shell), brew (package manager), cask (extension of brew)
- Install [Karabiner](https://pqrs.org/osx/karabiner/) if you want Windows type meta key usage (currently unavailable for Sierra, Karabiner-Elements for simple mappings)
- Install [Shiftit](https://github.com/fikovnik/ShiftIt) - for application window management
- [Mac application switcher hotkeys](http://osxdaily.com/2009/11/17/secrets-of-the-command-tab-mac-application-switcher/)
- Mac scripts to do stuff like open atom to a specific directory: Automator
- [Mac script to open terminal] (http://apple.stackexchange.com/questions/170602/open-terminal-via-applescript)
```apple-script
tell application "Terminal"
if not (exists window 1) then reopen
activate
-- insert your code here
end tell
```
- to add hotkey for services like the Mac script System Preferences->Keyboard->Shortcuts->Services, Under General add new shortcut
- [add shortcuts for commonly used code](https://superuser.com/questions/543647/creating-hotkey-or-keyboard-shortcut-for-pasting-specific-text-phrase-in-mac-osx)
- for Windows backspace behavior: Fn+delete 
- Windows Home and End: Command + Left Arrow, Command + Right Arrow 
- Beginning of line in terminal: Ctrl+A, End: Crtl+E 
- You can type in UTC as the city under the clock settings for UTC timezone

### New to Git
- first: https://try.github.io/levels/1/challenges/1
- more advanced: http://learngitbranching.js.org/
- https://www.sourcetreeapp.com/

 - to ignore a files clocal changes : git update-index --skip-worktree <file_path> , https://stackoverflow.com/questions/13630849/git-difference-between-assume-unchanged-and-skip-worktree

to reverse - git update-index --no-skip-worktree <file_name>


### Chrome
- [one-click merge windows](https://chrome.google.com/webstore/detail/merge-windows/mmpokgfcmbkfdeibafoafkiijdbfblfg?hl=en)
- [permanently pin tabs](http://lifehacker.com/5422014/make-google-chrome-open-with-permanently-pinned-tabs)
- [JSON formatting extension for Chrome](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh?hl=en-US)
- [Hot key to pop out a tab] (http://superuser.com/questions/182720/keyboard-shortcut-to-pull-google-chrome-tab-into-its-own-window)

### R
- [Rstudio](https://www.rstudio.com/products/rstudio/download/)
- for history search: command+up arrow
- for `<-`: Alt+-
- for `%>%`: Ctrl+Shift+M
- useful libraries:

```R
install.packages(c("ggplot2", "ggmap", "dplyr", 'tidyr', 'cowplot', "caret", 'readr', 'feather','devtools', "shiny"))
devtools::install_github('rstudio/rsconnect')

# For Jupyter Kernal
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
```

### IDEs
- [Sublime Text 3](https://www.sublimetext.com/3)
- [Atom](https://atom.io/)
- [Visual Studio Code](http://code.visualstudio.com/)

#### Database IDEs
- [SQL workbench/J](http://www.sql-workbench.net/) - FREE
- [Datagrip](https://www.jetbrains.com/datagrip/) - $90/yr

#### Atom
###### Useful Atom Packages
- extend atom abilities:
- script
- terminal-plus
- git-time-machine
- todo-show
- merge-conflicts
- git-plus
- project-manager
- editor help:
- sublime-style-column-selection
- autocomplete-python
- python-indent
- autocomplete-r
- docblocker
- linter
- linter-pep8
- visual mods:
- tabularize
- highlighting:
- r-language
- atom-beautify
- file-icons
- minimap
- minimap-highlight-selected
- highlight-selected
- custom-title

##### Edit keymap.cson to customize hotkeys
```coffeescript
'atom-workspace atom-text-editor:not([mini])':
'ctrl-shift-alt-up': 'editor:add-selection-above'
'ctrl-shift-alt-down': 'editor:add-selection-below'
```

##### Use remote-edit to edit files through sftp - may need to use [Issue #187](https://github.com/sveale/remote-edit/pull/187/commits/747eba9a3a80953efa42fe5589d399396c935e24) to get remote-edit working depending on atom version

### For scheduling tasks use crontab
`crontab -e`
This [crontab.guru](https://crontab.guru/) can be helpful to clarify formatting
Logs are on ubuntu are located at /var/log/syslog.
For more information use `mail` (install `sudo apt install mailutils`). Failed crontab tasks will be sent to the local mail, use `mail`. May be confirm correct user.

### Python
Find module locations:
```
$python
>>>import site; site.getsitepackages()
```
or for a specific package:
```
$python
>>> import jupyterhub
>>> jupyterhub.__file__
```

### Jupyter Notebook
- find all (and replace all): press f in command mode
- multiple cursors: CTRL (or CMD) + mouse click
- multiple selections: ALT + mouse click
- [Sublime style text match multiple cursors](http://www.perfectlyrandom.org/2016/03/19/sublime-text-style-multiple-cursors-in-jupyter-notebook/)

sublime commands (http://blog.rtwilson.com/how-to-get-sublime-text-style-editing-in-the-ipythonjupyter-notebook/)
- [Customize Jupyter appearance] (http://sethcpaul.com/2016/05/customizing-jupyter-notebook-appearance-with-the-custom-css-file/)

need to it remotely? `ssh -i ~/.ssh/dev-key.pem -L 8000:localhost:8888 ubuntu@<ip address>` and go to the indicated url but change port to 8000
### Sudo if command is not typically sudo available
```sudo env "PATH=$PATH" R CMD javareconf```

### For logging to date specific log files

In a shell file like `startup.sh`:
```#!/bin/bash
#!/bin/bash
python run_script.py &>>/home/ubuntu/log/script_log_`date +%b-%Y`
```

### To limit your data warehouse query to a safe time limit:
```sql
set statement_timeout to 180000; -- time is in milliseconds
```

## tmux - 
new session: 
```bash
tmux new -s session_name
```
detach:
`CTRL+B, D`

start a script detached:
```bash
tmux new -s script_session 'python /home/ubuntu/script.sh'
```

[Scrolling up the buffer](https://superuser.com/questions/209437/how-do-i-scroll-in-tmux):
`CTRL+B, [`
`q` to exit scroll mode

[Increasing buffer size to 5000 lines](https://stackoverflow.com/questions/18760281/how-to-increase-scrollback-buffer-size-in-tmux):
```bash
tmux set-option -g history-limit 5000 \; new-session
```

Another helpful thing is writing interactive input and output to a file, since your history may be lost in a tmux session (also on a normal terminal if it's very long). Very helpful with spark where logs can quickly pass the buffer.
```bash
python 2>&1 | tee test_log_out
```


## Parallelizing tasks in bash
`<input_file> | xarg -P <number of threads> <command>`

for example:

`cat xargs_input.txt | xargs -n 1 -P 10 -I {} bash -c 'hive -e "select $@;"' _ {}`


## Redis

`telnet <redis_host> <redis_port>`
### Get all keys that match pattern
```bash 
redis-cli -h <redis_host> --scan --pattern '*RankProfile*' > text_file
```

### Delete keys that match pattern
```bash 
redis-cli -h <redis_host> --scan --pattern '*RankProfile*' | xargs redis-cli -h <redis_host> DEL
```

### Customize terminal for windows
https://davidtranscend.com/blog/windows-terminal-workflow-guide/
