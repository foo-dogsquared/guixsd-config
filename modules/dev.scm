(define-module (modules dev)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:
                                 #:select (create-pkg-interface)))


; The base development kit.
(utils:create-pkg-interface
  pkgs-base-dev
  '(
     (default . ("direnv"                       ; Virtualenv on steroids.
                 "git"                          ; Epic save button for your projects.
                 "git-lfs"                      ; Even BIGGER save button.
                 "make"                         ; Create recipes for a quick buck from your project.
                 "python-cookiecutter"          ; Cookiecutter for your project baking.
                 "stow"                         ; Create your own symlink farm.
                 "universal-ctags"))))          ; Never get lost again by attaching tags to everyone in the block!


; C and C++ stuff.
(utils:create-pkg-interface
  pkgs-cc
  '(
     (default . ("cmake"                        ; Yo, I heard you like Makefiles...
                 "gcc-toolchain@9.3.0"          ; The bloated toolchain with extensions and stuff.
                 "gdb"                          ; A reverse engineer's secret weapon of choice.
                 "llvm@9.0.1"))))               ; The not-bloated toolchain with extensions and stuff.

; Data? What's that?
; Something that you don't backup?
(utils:create-pkg-interface
  pkgs-data
  '(
    (default . ("cfitsio"                       ; A library for reading/writing FITS images which is used for analyzing your fitness data.
                "hdf5"                          ; We live in a hierarchical data.
                "jq"                            ; JSON parsing on the shell... just have to live with the syntax, though.
                ;"pup"                           ; A cute pup that can follow the HTML tracks.
                "sqlite"                        ; A cute battle-tested database that can turn into a data abomination.
               ))))


; Game dev on a 100% free distro?
; Interesting.
(utils:create-pkg-interface
  pkgs-game-dev
  '(
     (default . ("allegro@5.2.5.0"              ; Not to be confused with a certain disorder, a common misconception.
                 "godot"                        ; THE standard cross-platform game engine, in my opinion.
                 "love"                         ; Put some more love for your games.
                 "renpy"                        ; Finally, I can create my Linux-based fanfictions.
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
                ))))

; Python is a snake.
(utils:create-pkg-interface
  pkgs-python
  '(
     (default . ("python@3.8.2"                 ; Them data science toolkit.
                 "python-beautifulsoup4"        ; Soups are beautiful?
                 "python-requests"              ; Requesting for your daily task.
                 "python-setuptools"            ; Setup your stuff for capturing them snakey code.
                ))
     (math . ("python-matplotlib"               ; I REALLY came for the plot.
              "python-numpy"                    ; The other analysis toolkit.
              "python-sympy"                    ; You'll certainly notice how mathematics work, boyo.
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
     (default . ("aspell"                               ; The unopinionated spell-checker.
                 "aspell-dict-en"

                 "pandoc"                               ; The Swiss army knife for 

                 "ruby-asciidoctor"                     ; A well-documented manual keeps a frustrated user away.
                 "ruby-asciidoctor-pdf"))
    (latex . ("texlive"))
    (jupyter . ("jupyter"))))


; Muh version control systems.
(utils:create-pkg-interface
  pkgs-vcs
  '(
    (default . ("git"                                   ; Didn't I include this before?
                "git-lfs"

                "mercurial"                             ; A version-controlled system based from how quicksilver are controlled.

                "subversion"))))                        ; Subvert your expectations! Go against the flow by diving into the ocean of alternative version control systems.

; I want them virtual machines up and running.
(utils:create-pkg-interface
  pkgs-virtual-machines
  '(
     (default . ("ovmf"                 ; The UEFI firmware for enabling booting to UEFI mode.
                 "qemu"                 ; Pretty sure the system already has this already.
                 "virt-viewer"          ; Graphical front-end for those who cannot figure out how to use QEMU on the command line. :p
                ))))
