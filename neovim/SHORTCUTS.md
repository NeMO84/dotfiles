# Vim (NeoVim)

start new:

    $ vim 

start with file:

    $ vim <file>

to a specific position:
    
    $ vim <file> +<line number>

edit a stream:

    $ find . | vim -

## Tips & Tricks

A lot of the information was compiled from: https://www.cs.oberlin.edu/~kuperman/help/vim/home.html

## Variables

    :set            - shows vars different from defaults
    :set all        - shows all values
    :set foo?       - shows the value of foo
    :set foo+=opt   - add opt to the value w/o changing others
    :set foo-=opt   - remove opt from value
    :set foo&       - reset foo to default value
    :setlocal foo   - only the current buffer
    :verbose set foo?   - tells you where it was last set!

## Text Selection

    V       - selects entire lines 
    v       - selects range of text
    ctrl-v  - selects columns
    gv      - reselect block

## Markers

    mk      - mark current position (can use a-z)
    'k      - move to mark k
    d'k     - delete from current position to mark k
    'a-z    - same file
    'A-Z    - between files`

## Indenting

    :set tabstop 8     - tabs are at proper location
    :set expandtab     - don't use actual tab character (ctrl-v)
    :set shiftwidth=4  - indenting is 4 spaces
    :set autoindent    - turns it on
    :set smartindent   - does the right thing (mostly) in programs
    :set cindent       - stricter rules for C programs

To indent the current line, or a visual block:

    ctrl-t, ctrl-d  - indent current line forward, backwards 
                      (insert mode)
    visual > or <   - indent block by sw (repeat with . )

## Windows

    :e filename      - edit another file
    :split filename  - split window and load another file
    ctrl-w up arrow  - move cursor up a window
    ctrl-w ctrl-w    - move cursor to another window (cycle)
    ctrl-w_          - maximize current window
    ctrl-w=          - make all equal size
    10 ctrl-w+       - increase window size by 10 lines
    :vsplit file     - vertical split
    :sview file      - same as split, but readonly
    :hide            - close current window
    :only            - keep only this window open
    :ls              - show current buffers
    :b 2             - open buffer #2 in this window

## Registers

    :reg     - show named registers and what's in them
    "5p      - paste what's in register "5
    qk       - records edits into register k 
                (q again to stop recording)
    @k       - execute recorded edits (macro)
    @@       - repeat last one
    5@@      - repeat 5 times
    "kp      - print macro k 
                (e.g., to edit or add to .vimrc)
    "kd      - replace register k with what cursor is on

## Help

    :help uganda
    :help!
    :help 42
    :help quotes
    :help holy-grail

## Nerd Tree
    
    SPACE+k         toggle nerd tree
    s               split selected item in different pane
    o               Open files, directories and bookmarks......................|NERDTree-o|
    go                Open selected file, but leave cursor in the NERDTree......|NERDTree-go|
                      Open selected bookmark dir in current NERDTree
    t               Open selected node/bookmark in a new tab...................|NERDTree-t|
    T               Same as 't' but keep the focus on the current tab..........|NERDTree-T|
    i               Open selected file in a split window.......................|NERDTree-i|
    gi                Same as i, but leave the cursor on the NERDTree...........|NERDTree-gi|
    s               Open selected file in a new vsplit.........................|NERDTree-s|
    gs                Same as s, but leave the cursor on the NERDTree...........|NERDTree-gs|
    O               Recursively open the selected directory....................|NERDTree-O|
    x               Close the current nodes parent.............................|NERDTree-x|
    X               Recursively close all children of the current node.........|NERDTree-X|
    e               Edit the current dir.......................................|NERDTree-e|
    <CR>                same as |NERDTree-o|.
    D               Delete the current bookmark ...............................|NERDTree-D|
    P               Jump to the root node......................................|NERDTree-P|
    p               Jump to current nodes parent...............................|NERDTree-p|
    K               Jump up inside directories at the current tree depth.......|NERDTree-K|
    J               Jump down inside directories at the current tree depth.....|NERDTree-J|
    <C-J>           Jump down to next sibling of the current directory.......|NERDTree-C-J|
    <C-K>           Jump up to previous sibling of the current directory.....|NERDTree-C-K|
    C               Change the tree root to the selected dir...................|NERDTree-C|
    u               Move the tree root up one directory........................|NERDTree-u|
    U               Same as 'u' except the old root node is left open..........|NERDTree-U|
    r               Recursively refresh the current directory..................|NERDTree-r|
    R               Recursively refresh the current root.......................|NERDTree-R|
    m               Display the NERDTree menu..................................|NERDTree-m|
    cd                Change the CWD to the dir of the selected node............|NERDTree-cd|
    CD                Change tree root to the CWD...............................|NERDTree-CD|
    I               Toggle whether hidden files displayed......................|NERDTree-I|
    f               Toggle whether the file filters are used...................|NERDTree-f|
    F               Toggle whether files are displayed.........................|NERDTree-F|
    B               Toggle whether the bookmark table is displayed.............|NERDTree-B|
    q               Close the NERDTree window..................................|NERDTree-q|
    A               Zoom (maximize/minimize) the NERDTree window...............|NERDTree-A|
    ?               Toggle the display of the quick help.......................|NERDTree-?|

## Plugin Specific

    :PlugInstall      install plugins 
    :PlugUpdate       update plugins
    :PlugUpgrade      upgrade Plug

