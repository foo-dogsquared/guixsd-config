(define-module (modules _utils)
  #:use-module (gnu packages)
  #:use-module (ice-9 optargs)
  #:export (create-pkg-interface))

(define-syntax-rule
  (create-pkg-interface name branch-pairs)

  "Creates a quick public interface of a toggle module.
  It needs a name and a list of pairs with the identifier as the car and a list of Guix packages as the cdr.
  Upon return, it will create a public procedure that accepts an allowlist of packages to be enabled."

  (define*-public (name #:key (allow (list 'default)))
    (let ((packages '()))

      ; Create a hash table from the branch pairs.
      (define _branches (make-hash-table))
      (for-each (lambda (pair)
                  (hashq-set! _branches (car pair) (cdr pair))) branch-pairs)

      ; Add the associated packages from the allowlisted subpackages.
      (for-each (lambda (option)
                  (let ((hash-value (hashq-ref _branches option)))
                    (if hash-value
                        (set! packages (append packages hash-value))))) allow)

      ; Return the package list.
      packages)))

