
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here, run 'doom sync' on
;; the command line, then restart Emacs for the changes to take effect.
;; Alternatively, use M-x doom/reload.


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; (package! format-all)

;; To install a package directly from a particular repo, you'll need to specify
;; a `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, for whatever reason,
;; you can do so here with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))
;; (package! phpactor)
;; (package! company-phpactor)
;; (package! web-beautify)
;; (package! yasnippet-snippets)
;; (package! lsp-mode)
;; (package! lsp-ui)
;; (package! dap-mode)
;; (package! eglot)
;; (package! rust-mode)
;; (package! ranger)
;; (package! omnisharp)
;; (package! vmd-mode)
;; (package! glsl-mode)
;; (package! company-glsl)
;;(package! react-snippets)
;; (package! docker-tramp)
;; (package! prettify-utils ; simplify messing with prettify-mode
;;   :recipe (:host github :repo "Ilazki/prettify-utils.el") :pin "8b783d316c...")
;; (package! enh-ruby-mode)
;; (package! lsp-treemacs)
;; (package! minimap)
;; (package! cheat-sh)
;; (package! org-re-reveal)
;; (package! company-tabnine)
;; (package! lsp-mode :recipe (:host github :repo "XMasterNinni/lsp-mode"))
;; (package! lsp-tailwindcss :recipe (:host github :repo "XMasterNinni/lsp-tailwindcss"))
;;(package! org-krita :recipe (
;;                             :host github
;;                             :repo "XMasterNinni/org-krita"
;;                             :files ("resources" "resources" "*.el" "*.el")))

;; (package! tree-sitter)
;; (package! tree-sitter-langs)
;; (package! tree-sitter-indent)
;; (package! tsi :recipe (:type git :host github :repo "orzechowskid/tsi.el"))
;; (package! tsx-mode :recipe (:type git :host github :repo "orzechowskid/tsx-mode.el"))
;; (package! prettier)
(package! prisma-mode :recipe (:host github :repo "pimeys/emacs-prisma-mode" :branch "main"))
(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))
(package! nginx-mode)
(package! apache-mode)
(package! systemd)
