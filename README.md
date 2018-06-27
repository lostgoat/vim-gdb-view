
gdb-view.vim: Quick and dirty mechanism for opening a focused gdb view


Author: Andres Rodriguez


Installation
============

* [vim-plug](https://github.com/junegunn/vim-plug)
 *  `Plug 'lostgoat/vim-gdb-view'`

Similar instructions should also work for other plugin managers.

Instructions
============

Focus on the file you wish to debug. Then call
```
:GdbViewOpen
```

When done debugging call:
```
:GdbViewClose
```

You can also use the following to toggle the status:
```
:GdbViewToggle
```

Mappings
========

You might want to create some shortcuts:
```
map <leader>d :GdbViewToggle()<CR>
```
