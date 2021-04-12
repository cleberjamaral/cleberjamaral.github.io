# tmux

### From outside tmux

* Start a new session: `$ tmux`, or `$ tmux new`
* List sessions: `$ tmux ls`
* Attach to a session: `$ tmux a -t session_name`
* Kill a session: `$ tmux kill-session -t session_name`

### Useful commands

* List tmux commands: **`Ctrl + b ?`**

### Working with sessions

* Create a new session: **`Ctrl + b : new`**
* Rename session: **`Ctrl + b $`**
* Detach from the current session: **`Ctrl + b d`**
* Move to another session: **`Ctrl + b (`**, or **`Ctrl + b )`** 

### Working with panes

* Split pane vertically: **`Ctrl + b %`**
* Split pane horizontally: **`Ctrl + b "`**
* Switch to the next pane: **`Ctrl + b o`**
* Switch to another pane: **`Ctrl + b ←`**, or **`Ctrl + b →`**, or **`Ctrl + b ↑`, or ↓**
* Close pane: **Ctrl + b x**
* Move the pane: **`Ctrl + b {`**, or **`Ctrl + b }`** 

### Copy mode

* Enter copy mode: **`Ctrl + b [`**, or **`Ctrl + PgUp`** 
* Quit copy mode: **`q`**

#### 

#### Sources

* [tmux cheat sheet](https://tmuxcheatsheet.com/)

