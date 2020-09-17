(define-module (manifests base)
  #:use-module (gnu packages)
  #:use-module (guix profiles)
  #:use-module ((modules desktop) #:prefix desktop:)
  #:use-module ((modules dev) #:prefix dev:)
  #:use-module ((modules editors) #:prefix editors:)
  #:use-module ((modules shell) #:prefix shell:))
  

(specifications->manifest
  (append
    ; Desktop apps and whatnot.
    (desktop:pkgs-browsers
      #:allow '(nyxt firefox))
    (desktop:pkgs-files)
    (desktop:pkgs-fonts)
    (desktop:pkgs-graphics
      #:allow '(default raster vector 3d))
    (desktop:pkgs-multimedia)
    (desktop:pkgs-music
      #:allow '(composition production))

    ; Development such as such.
    (dev:pkgs-base-dev)
    (dev:pkgs-cc)
    (dev:pkgs-game-dev)
    (dev:pkgs-java)
    (dev:pkgs-javascript)
    (dev:pkgs-lisp
      #:allow '(guile clojure racket))
    (dev:pkgs-math)
    (dev:pkgs-python)
    (dev:pkgs-rust)
    (dev:pkgs-technical-writing
      #:allow '(default latex jupyter))

    ; Muh editors.
    (editors:pkgs-emacs)
    (editors:pkgs-neovim)

    ; Muh terminal apps.
    (shell:pkgs-base-shell)))

