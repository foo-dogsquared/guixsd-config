; Contains all of the editor stuff in here.
(define-module (modules editors)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:))


; The thing that causes the most procastination time.
(utils:create-pkg-interface pkgs-emacs
  (list
    (cons 'default '("emacs"))))


; The other thing that cause a part of procastination time.
(utils:create-pkg-interface pkgs-neovim
  (list
    (cons 'default '("neovim"))))

