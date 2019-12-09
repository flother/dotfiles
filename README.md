Personal dotfiles, [managed with GNU Stow][1]. Inspiration (and, in many
cases, actual code):

* [Mathias Bynens's dotfiles][2]
* [Seth House's `.pythonrc`][3]
* [256-colour mode for GNU screen][4]
* [Python and Vim][5]
* [Steve Losh's "Coming home to Vim"][6]

To install the dotfiles, install [GNU stow][7] and run:

`stow -t ~ bash curl fish flake8 git isort mutt postgresql python screen sqlite system vim`

For Vim you'll want to create directories for backups/swap files/undos, then
install [Vundle][8] and the plugins:

    mkdir -p ~/.vim/swaps ~/.vim/backups ~/.vim/undo ~/.vim/bundle/
    cd ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git
    vim +PluginInstall +qall

[1]: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
[2]: https://github.com/mathiasbynens/dotfiles
[3]: https://github.com/whiteinge/dotfiles/blob/master/.pythonrc.py
[4]: http://www.robmeerman.co.uk/unix/256colours
[5]: https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
[6]: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
[7]: https://www.gnu.org/software/stow/
[8]: http://github.com/VundleVim/Vundle.Vim
