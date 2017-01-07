# Tmux

start new:

    tmux

start new with session name:

    tmux new -s myname

attach to named:

    tmux a -t myname (or at, or attach)

list sessions:

    tmux ls (or list-sessions)

kill session:

    tmux kill-session -t myname

Kill all the tmux sessions:

    tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill

In tmux, hit the prefix `ctrl+b` (my modified prefix is ctrl+j) and then:

## Sessions

    r         reload ~/.tmux.conf 
    :new<CR>  create session
    $         rename session

## Windows (tabs)

    c   create window
    w   list windows
    n   next window
    p   previous window
    f   find window
    ,   rename window
    &   kill window

## Panes (splits) 

    |   vertical split
    \-  horizontal split
    o   switch panes
    x   kill pane
    h   move to left pane
    j   move to down pane
    k   move to up pane
    l   move to right pane
    q   show pane numbers
    q # show pane numbers and move to pane #
    {   move the current pane left
    }   move the current pane right
    z   toggle pane zoom 

## Resizing Panes

You can also resize panes if you don’t like the layout defaults. I personally rarely need to do this, though it’s handy to know how. Here is the basic syntax to resize panes:

    : resize-pane -D (Resizes the current pane down)
    : resize-pane -U (Resizes the current pane upward)
    : resize-pane -L (Resizes the current pane left)
    : resize-pane -R (Resizes the current pane right)
    : resize-pane -D 20 (Resizes the current pane down by 20 cells)
    : resize-pane -U 20 (Resizes the current pane upward by 20 cells)
    : resize-pane -L 20 (Resizes the current pane left by 20 cells)
    : resize-pane -R 20 (Resizes the current pane right by 20 cells)
    : resize-pane -t 2 20 (Resizes the pane with the id of 2 down by 20 cells)
    : resize-pane -t -L 20 (Resizes the pane with the id of 2 left by 20 cells)

## Misc

    d  detach
    t  big clock
    ?  list shortcuts
    :  prompt

## Plugin Specific

[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

    I       instal tmux plugins 
    U       update tmux plugins 
    Alt+u   uninstalls/removes tmux plugins 

[Resurrect](https://github.com/tmux-plugins/tmux-resurrect)

    <C-s>   save tmux session
    <C-r>   restore tmux session

[Sessionist](https://github.com/tmux-plugins/tmux-sessionist)

    g   switch sessions 
    C   create new sessions 
    X   kill current session sessions 
    S   switch to last sessions
    @   promote current pane into new sessions







    
