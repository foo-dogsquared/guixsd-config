(define-module (modules shell)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:))

; Base package group for my command-line-based workflow.
(utils:create-pkg-interface pkgs-base-shell
  (list
    (cons 'default '("aria2"				; A download manager for the hipsters.
		     "exa"				; ls(1) after an exodus.
		     "fd"				; find(1) after a cognitive behavioral therapy.
		     "go-github-com-junegunn-fzf"	; A fuzzy finder for files, not a furry finder in the files.
		     "go-github-com-howeyc-gopass"	; A password manager for the hipsters.
		     "httpie"				; Come get your HTTP pie.
		     "lf"				; A file manager for the hipsters.
		     "maim"
		     "ripgrep"				; Super-fast full text searcher.
		     "sqlite"				; Battle-tested cute little database that can grow into an abomination as a data spaghetti.
		     "tree"				; I'm not a scammer, I swear!
		     "unzip"				; Unzip what? The world may never know.
		     "youtube-dl"			; The Y-word in YouTube.
		     ))))



