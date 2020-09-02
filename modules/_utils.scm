(define-module (modules _utils)
  #:use-module (gnu packages)
  #:use-module (ice-9 optargs)
  #:export (create-pkg-interface))

(define-syntax-rule
  (create-pkg-interface name branch-alist)

  "Creates a quick public interface of a toggle module.
  It needs a name and an association list with the identifier as the key and a list of Guix packages as the value.
  Upon return, it will create a public procedure that accepts an allowlist of branches with their associated list of packages to be added and returns the resulting package list."

  (define*-public (name #:key (allow (list 'default)))
    (let ((packages '()))
      ; Add the associated packages from the allowlisted subpackages.
      (for-each (lambda (option)
                  (let ((hash-value (assq-ref branch-alist option)))
                    (if hash-value
                        (set! packages (append packages hash-value))))) allow)

      ; Return the package list.
      packages)))

