(define-module (modules dev)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:
                                 #:select (create-pkg-interface)))


; The base development kit.
(utils:create-pkg-interface
  pkgs-base-dev
  '(
     (default . ("python-cookiecutter"
                   "git"
                   "git-lfs"
                   "stow"
                   "universal-ctags"))))


; C and C++ stuff.
(utils:create-pkg-interface
  pkgs-cc
  '(
     (default . ("cmake"
                   "gcc-toolchain@9.3.0"
                   "gdb"
                   "llvm@9.0.1"))))


; Game dev on a 100% free distro?
; Interesting.
(utils:create-pkg-interface
  pkgs-game-dev
  '(
     (default . ("allegro@5.2.5.0"          ; Not to be confused with a certain disorder, a common misconception.
                   "godot"            ; THE standard cross-platform game engine, in my opinion.
                   "love"             ; Put some more love for your games.
                   "renpy"            ; Finally, I can create my Linux-based fanfictions.
                   ))))


; Gotta get my coffee for this Java stuff.
(utils:create-pkg-interface
  pkgs-java
  '(
     (default . ("openjdk@14.0"))))


; Gotta get my coffee for this JavaScript stuff MORE!
(utils:create-pkg-interface
  pkgs-javascript
  '(
     (default . ("node"))))


; Lisp on this system?
; Why not everywhere, then!
(utils:create-pkg-interface
  pkgs-lisp
  '(
     (guile . ("guile@3.0.4"))      ; A Lisp named after a certain American pop culture icon.
     (clojure . ("clojure"))        ; You won't have any clojure with Java once you've known the Lisp side of things.
     (racket . ("racket"))))        ; Fuel-powered framework for your schemes.


; I just like them visual aids.
(utils:create-pkg-interface
  pkgs-math
  '(
     (default . ("gnuplot"          ; I came for the plot.
                   "octave"           ; I came for the free and open source alternative.
                   "r"                ; Rated G for accessibility.
                  ))
     (python . ("python@3.8.2"      ; Them data science toolkit.
                  "python-matplotlib" ; I REALLY came for the plot.
                  "python-numpy"      ; The other analysis toolkit.
                  "python-sympy"      ; You'll certainly notice how mathematics work, boyo.
                 ))))


; Getting rusty with Rust.
(utils:create-pkg-interface
  pkgs-rust
  '(
    (default . ("rust@1.45.2"))))


; Documentation is a part of development process.
(utils:create-pkg-interface
  pkgs-technical-writing
  '(
     (default . ("aspell"                 ; The unopinionated spell-checker.
                   "aspell-dict-en"

                   "pandoc"

                   "ruby-asciidoctor"              ; A well-documented manual keeps a frustrated user away.
                   "ruby-asciidoctor-pdf"))
    (latex . ("texlive"))
    (jupyter . ("jupyter"))))


; I want them virtual machines up and running.
(utils:create-pkg-interface
  pkgs-virtual-machines
  '(
     (default . ("ovmf"                ; The UEFI firmware for enabling booting to UEFI mode.
                   "qemu"                ; Pretty sure the system already has this already.
                   "virt-viewer" ; Graphical front-end for those who cannot figure out how to use QEMU on the command line. :p
                  ))))
