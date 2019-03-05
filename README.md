# homebrew-mayeu

Some personal formula for Homebrew:

- [beancount][b]: A double-entry bookkeeping computer language that lets you
  define financial transaction records in a text file
- [beancount-script][bs]: Scripts I use for my accounting using beancount
- [borgmatic][bo]: A wrapper script for Borg backup software that creates and
  prunes backups
- [fava][f]: Web interface for Beancount
- [flock(1)][fl]: a portable implementation of the linux flock command working
  everywhere
  - :warning: It is using the commit
    [4148b86be](https://github.com/discoteq/flock/tree/4148b86be01bbfad45ceef1f835cc12ff395d3c0)
    since the official brew package is not yet up-to-date (and does not support
    `-x` option)

[b]: http://furius.ca/beancount/
[bs]: https://github.com/Mayeu/beancount-scripts
[bo]: https://torsion.org/borgmatic/
[f]: https://beancount.github.io/fava/
[fl]: https://github.com/discoteq/flock
