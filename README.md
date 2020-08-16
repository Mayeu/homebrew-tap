# My personal tap

This tap contains formula for tools that I used but are not in the core tap,
or for some of my personal scripts.

You can install them directly via:
```
$ brew install mayeu/tap/<name of the formula>
```

Or you can register the tap via:
```
$ brew tap mayeu/tap
```

## Tools made by others in this tap

- [flock][fl]: a portable implementation of the linux flock command working
  everywhere
  - :warning: This formula use the commit
    [4148b86be](https://github.com/discoteq/flock/tree/4148b86be01bbfad45ceef1f835cc12ff395d3c0)
    since the official brew package is not yet up-to-date (and does not support
    `-x` option)
- [lmt][l]: a literate markdown tangle in go
- [run-one][r]: run one instance of some unique combination of command and
  arguments at a time

[fl]: https://github.com/discoteq/flock
[l]: https://github.com/driusan/lmt/
[r]: https://launchpad.net/run-one

## Personal tools in this tap

*Not that a lot of those a proof-of-concept or work in progress. Install with care.*

- [beancount-script][bs]: scripts I use for my accounting using beancount
- [habitica-cli][h]: a small CLI for habitica

[bs]: https://github.com/Mayeu/beancount-scripts
[h]: https://github.com/Mayeu/habitica-cli
