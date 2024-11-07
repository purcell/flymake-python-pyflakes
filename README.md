flymake-python-pyflakes.el
==========================

An Emacs flymake handler for syntax-checking Python source code using
`pyflakes` or `flake8`.

These days you might be better served by [flycheck](https://github.com/flycheck/flycheck).

Installation
=============

If you choose not to use one of the convenient packages in
[Melpa][melpa] and [Marmalade][marmalade], you'll need to add the
directory containing `flymake-python-pyflakes.el` to your `load-path`, and then
`(require 'flymake-python-pyflakes)`. You'll also need to install
[flymake-easy](https://github.com/purcell/flymake-easy).

Usage
=====

Add the following to your emacs init file:

    (require 'flymake-python-pyflakes)
    (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

To use `flake8` instead of `pyflakes`, add this line:

    (setq flymake-python-pyflakes-executable "flake8")

You can pass extra arguments to the checker program by customizing
the variable `flymake-python-pyflakes-extra-arguments`, or setting it
directly, e.g.

    (setq flymake-python-pyflakes-extra-arguments '("--ignore=W806"))

[marmalade]: http://marmalade-repo.org
[melpa]: http://melpa.org

<hr>

[💝 Support this project and my other Open Source work](https://www.patreon.com/sanityinc)

[💼 LinkedIn profile](https://uk.linkedin.com/in/stevepurcell)

[✍ sanityinc.com](http://www.sanityinc.com/)
