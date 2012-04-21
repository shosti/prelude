(require 'personal-packages)

(require 'pretty-mode)
(global-pretty-mode 1)
(setq pretty-patterns
  (let* ((lispy '(scheme emacs-lisp lisp clojure))
         (mley '(tuareg haskell sml))
         (c-like '(c c++ perl sh python java ess ruby))
         (all (append lispy mley c-like (list 'octave))))
    (pretty-compile-patterns
     `(
       (?≠ ("!=" ,@c-like scheme octave)
           ("<>" tuareg octave)
           ("~=" octave)
           ("/=" haskell emacs-lisp))
       (?≤ ("<=" ,@all))
       (?≥ (">=" ,@all))
       (?← ("<-" ,@mley ess))
       (?→ ("->" ,@mley ess c c++ perl))
       (?↑ ("\\^" tuareg))
       (?⇒ ("=>" sml perl ruby haskell))
;;;    (?… ("\\.\\.\\." scheme))
;;;    (?∀ ("List.for_all" tuareg))
;;;    (?∃ ("List.exists" tuareg))
;;;    (?∈ ("List.mem" tuareg)
;;;        ("member" ,@lispy))
;;;    (?∉ ())
       (?√ ("sqrt" ,@all))
       (?∑ ("sum" python haskell octave))
       (?α ("alpha" ,@all)
           ("'a" ,@mley))
       (?β ("beta" ,@all)
           ("'b" ,@mley))
       (?γ ("gamma" ,@all)
           ("'c" ,@mley))
       (?Δ ("delta" ,@all)
           ("'d" ,@mley))
       (?ε ("epsilon" ,@all))
       (?θ ("theta" ,@all))
       (?λ ("lambda" ,@all)
;;;        ("case-\\(lambda\\)" scheme)
           ("fn" sml clojure)
           ("fun" tuareg)
           ("\\" haskell))
       (?π ("pi" ,@all)
           ("M_PI" c c++))
       (?φ ("psi" ,@all))
       (?µ ("mu" ,@all))
       (?² ("**2" python tuareg octave)
           ("^2" octave haskell))
       (?³ ("**3" python tuareg octave)
           ("^3" octave haskell))
       (?ⁿ ("**n" python tuareg octave)
           ("^n" octave haskell))

    ;; (?₀ ("[0]" ,@c-like)
    ;;     ("(0)" octave)
    ;;     (".(0)" tuareg))
    ;; (?₁ ("[1]" ,@c-like)
    ;;     ("(1)" octave)
    ;;     (".(1)" tuareg))
    ;; (?₂ ("[2]" ,@c-like)
    ;;     ("(2)" octave)
    ;;     (".(2)" tuareg))
    ;; (?₃ ("[3]" ,@c-like)
    ;;     ("(3)" octave)
    ;;     (".(3)" tuareg))
    ;; (?₄ ("[4]" ,@c-like)
    ;;     ("(4)" octave)
    ;;     (".(4)" tuareg))

       (?∞ ("HUGE_VAL" c c++))

;;;    (?∙ ())
;;;    (?× ())
;;;    (?ₐ ("[a]" ,@c-like)
;;;        ("(a)" octave))
;;;    (?ₓ ("[x]" ,@c-like)
;;;        ("(x)" octave))
;;;    (?₅ ("[5]") ,@c-like)
;;;    (?₆ ("[6]") ,@c-like)
;;;    (?₇ ("[7]") ,@c-like)
;;;    (?₈ ("[8]") ,@c-like)
;;;    (?₉ ("[9]") ,@c-like)

;;;    (?⋂ "\\<intersection\\>"   (,@lispen))
;;;    (?⋃ "\\<union\\>"          (,@lispen))


;;;    (?∧ ("\\<And\\>"     emacs-lisp lisp python)
;;;        ("\\<andalso\\>" sml)
;;;        ("&&"            c c++ perl haskell))
;;;    (?∨ ("\\<or\\>"      emacs-lisp lisp)
;;;        ("\\<orelse\\>"  sml)
;;;        ("||"            c c++ perl haskell))
;;;    (?¬ ("\\<!\\>"       c c++ perl sh)
;;;        ("\\<not\\>"     lisp emacs-lisp scheme haskell sml))

       ))))
