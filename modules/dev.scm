(define-module (modules dev)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:))


; The base development kit.
(utils:create-pkg-interface pkgs-base-dev
  (list
    (cons 'default '("python-cookiecutter"
                     "git"
                     "git-lfs"
                     "stow"
                     "universal-ctags"))))


; C and C++ stuff.
(utils:create-pkg-interface pkgs-cc
  (list
    (cons 'default '("cmake"
                     "gcc-toolchain@9.3.0"
                     "gdb"
                     "llvm@9.0.1"))))


; Game dev on a 100% free distro?
; Interesting.
(utils:create-pkg-interface pkgs-game-dev
  (list
    (cons 'default '("allegro@5.2.5.0"          ; Not to be confused with a certain disorder, a common misconception.
                     "godot"            ; THE standard cross-platform game engine, in my opinion.
                     "love"             ; Put some more love for your games.
                     "renpy"            ; Finally, I can create my Linux-based fanfictions.
                     ))))


; Gotta get my coffee for this Java stuff.
(utils:create-pkg-interface pkgs-java
  (list
    (cons 'default '("openjdk@14.0"))))


; Gotta get my coffee for this JavaScript stuff MORE!
(utils:create-pkg-interface pkgs-javascript
  (list
    (cons 'default '("node"))))


; Lisp on this system?
; Why not everywhere, then!
(utils:create-pkg-interface pkgs-lisp
  (list
    (cons 'guile '("guile@3.0.4"))      ; A Lisp named after a certain American pop culture icon.
    (cons 'clojure '("clojure"))        ; You won't have any clojure with Java once you've known the Lisp side of things.
    (cons 'racket '("racket"))))        ; Fuel-powered framework for your schemes.


; I just like them visual aids.
(utils:create-pkg-interface pkgs-math
  (list
    (cons 'default '("gnuplot"          ; I came for the plot.
                    "octave"           ; I came for the free and open source alternative.
                     "r"                ; Rated G for accessibility.
                     ))
    (cons 'python '("python@3.8.2"      ; Them data science toolkit.
                    "python-matplotlib" ; I REALLY came for the plot.
                    "python-numpy"      ; The other analysis toolkit.
                    "python-sympy"      ; You'll certainly notice how mathematics work, boyo.
                    ))))


; Getting rusty with Rust.
(utils:create-pkg-interface pkgs-rust
  (list
    (cons 'default '("rust@1.45.2"))))


; Documentation is a part of development process.
(utils:create-pkg-interface pkgs-technical-writing
  (list
    (cons 'default '("aspell"                 ; The unopinionated spell-checker.
                     "aspell-dict-en"

                     "pandoc"

                     "ruby-asciidoctor"              ; A well-documented manual keeps a frustrated user away.
                     "ruby-asciidoctor-pdf"))
    (cons 'latex '("texlive"))
    (cons 'jupyter '("jupyter"))))

