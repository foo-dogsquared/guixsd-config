(use-modules 
  (gnu packages)
  (guix profiles)
  ((modules desktop) #:prefix desktop:)
  ((modules dev) #:prefix dev:)
  ((modules editors) #:prefix editors:))

(specifications->manifest
  (append
    ; Desktop apps and whatnot.
    (desktop:pkgs-browsers
      #:allow (list 'nyxt 'chromium))
    (desktop:pkgs-cad
      #:allow (list 'default 'kicad))
    (desktop:pkgs-files)
    (desktop:pkgs-fonts)
    (desktop:pkgs-graphics
      #:allow (list 'default 'raster 'vector '3d))
    (desktop:pkgs-multimedia)
    (desktop:pkgs-music
      #:allow (list 'composition 'production))

    ; Development such as such.
    (dev:pkgs-base-dev)
    (dev:pkgs-cc)
    (dev:pkgs-game-dev)
    (dev:pkgs-java)
    (dev:pkgs-javascript)
    (dev:pkgs-lisp
      #:allow (list 'guile 'clojure 'racket))
    (dev:pkgs-math)
    (dev:pkgs-rust)
    (dev:pkgs-technical-writing
      #:allow (list 'default 'latex 'jupyter))

    ; Muh editors.
    (editors:pkgs-emacs)
    (editors:pkgs-neovim)))

