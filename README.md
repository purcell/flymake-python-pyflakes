flymake-python-pyflakes.el
==========================

An Emacs flymake handler for syntax-checking Python source code using
`pyflakes` or `flake8`.

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

To add ignores to flake8, for example E501 and F403

    (setq flymake-python-pyflakes-flake8-ignores "E501,F403")

[marmalade]: http://marmalade-repo.org
[melpa]: http://melpa.milkbox.net

<hr>

[![](http://api.coderwall.com/purcell/endorsecount.png)](http://coderwall.com/purcell)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](http://uk.linkedin.com/in/stevepurcell)

[Steve Purcell's blog](http://www.sanityinc.com/) // [@sanityinc on Twitter](https://twitter.com/sanityinc)
