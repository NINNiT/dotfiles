;; [[file:config.org::*Set user full-name and mail-address][Set user full-name and mail-address:1]]
(setq user-full-name "Simon"
      user-mail-address "soelder@hotmail.com")
;; Set user full-name and mail-address:1 ends here

;; [[file:config.org::*Keymaps][Keymaps:1]]
(map!
 :desc "Switch dictionary"
 :leader "j d"
 'fd-switch-dictionary)

(map!
 :desc "org-pretty modde"
 :leader "j p"
 '+org-pretty-mode)

(map!
 :desc "Increase font size"
 :leader "j +"
 'doom/increase-font-size )

(map!
 :desc "Decrease font size"
 :leader "j -"
 'doom/decrease-font-size )

;; evaluation stuff
(map! :leader
      :desc "Evaluate elisp in buffer"
      "e b" #'eval-buffer
      :leader
      :desc "Evaluate defun"
      "e d" #'eval-defun
      :leader
      :desc "Evaluate elisp expression"
      "e e" #'eval-expression
      :leader
      :desc "Evaluate last sexpression"
      "e l" #'eval-last-sexp
      :leader
      :desc "Evaluate elisp in region"
      "e r" #'eval-region)

(map!
 :desc "Switch to buffer"
 :leader "j s"
 #'switch-to-buffer)

(map!
 :desc "Jumps to last buffer"
 :leader
 "j b" #'evil-switch-to-windows-last-buffer)

(map!
 :desc "Open mediacube wiki"
 :leader
 "j m" #'open-mediacube)

(map!
 :desc "Open flycheck setup"
 :leader
 "j f" #'flycheck-verify-setup)

(map!
 :desc "Edit org babel "
 :leader
 "j e" #'org-edit-special)

(map!
 :desc "switch to other workspace"
 :leader
 "j o" '+workspace/other)

(map!
 :desc "wrap in org-block"
 :leader
 "j w" 'org-insert-structure-template)
;; Keymaps:1 ends here

;; [[file:config.org::*Set font options:][Set font options::1]]
;; (setq doom-font (font-spec :family "Fira Code" :size 15)
;;       doom-variable-pitch-font (font-spec :family "Fira Code" :size 16) ; inherits `doom-font''s :size
;;       doom-big-font (font-spec :family "Fira Code" :size 19))
;;
(setq doom-font (font-spec :family "Comic Code Ligatures Medium" :size 17)
      doom-variable-pitch-font (font-spec :family "Comic Code Ligatures" :size 21)
      doom-big-font (font-spec :family "Source Code Pro" :size 25))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  )

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))
(setq global-prettify-symbols-mode t)
;; Set font options::1 ends here

;; [[file:config.org::*Set doom-theme][Set doom-theme:1]]
(setq doom-theme 'doom-gruvbox)
;; Set doom-theme:1 ends here

;; [[file:config.org::*Load theme][Load theme:1]]
(defun ap/load-doom-theme (theme)
  "Disable active themes and load a Doom theme."
  (interactive (list (intern (completing-read "Theme: "
                                              (->> (custom-available-themes)
                                                   (-map #'symbol-name)
                                                   (--select (string-prefix-p "doom-" it)))))))
  (ap/switch-theme theme)

  (set-face-foreground 'org-indent (face-background 'default)))

(defun ap/switch-theme (theme)
  "Disable active themes and load THEME."
  (interactive (list (intern (completing-read "Theme: "
                                              (->> (custom-available-themes)
                                                   (-map #'symbol-name))))))
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme theme 'no-confirm))
;; Load theme:1 ends here

;; [[file:config.org::*Splash Screen][Splash Screen:1]]
(setq fancy-splash-image "~/.doom.d/splash.png")
;; Splash Screen:1 ends here

;; [[file:config.org::*Set org-directory][Set org-directory:1]]
(setq org-directory "~/org/")
;; Set org-directory:1 ends here

;; [[file:config.org::*Performance Tweaks][Performance Tweaks:1]]
;; (setq remote-file-name-inhibit-cache nil)
;; (setq vc-ignore-dir-regexp
;;       (format "%s\\|%s"
;;                     vc-ignore-dir-regexp
;;                     tramp-file-name-regexp))
;; (setq tramp-verbose 1)
;; Performance Tweaks:1 ends here

;; [[file:config.org::*treesitter][treesitter:1]]
;; (use-package! tree-sitter
;;   :config
;;   (require 'tree-sitter-langs)
;;   (global-tree-sitter-mode)
;;   (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
;; treesitter:1 ends here

;; [[file:config.org::*Disable format on save for =authinfo= mode][Disable format on save for =authinfo= mode:1]]
(add-hook! authinfo-mode-hook (format-all-mode -1))
;; Disable format on save for =authinfo= mode:1 ends here

;; [[file:config.org::*Some more settings, not sure where to put them yet][Some more settings, not sure where to put them yet:1]]
;; (setq display-line-numbers-type t)
;; (setq doom-gc-cons-threshold 33554432)
;; (setq tramp-default-method "ssh")
;; (setq ranger-override-dired-mode t)
;; (setq auto-save-default t)
;; (setq evil-want-fine-undo t)
;; (global-auto-revert-mode 1)
;; (setq undo-limit 80000000)
;; (setq inhibit-compacting-font-caches t)
;; (whitespace-mode -1)

;; (setq-default
;;  ;; tab-width 4
;;  uniquify-buffer-name-style 'forward
;;  window-combination-resize t
;;  x-stretch-cursor nil)
;; Some more settings, not sure where to put them yet:1 ends here

;; [[file:config.org::*Move items to trash on delete][Move items to trash on delete:1]]
(setq
 trash-directory "~/.Trash/"
 delete-by-moving-to-trash t)
;; Move items to trash on delete:1 ends here

;; [[file:config.org::*Winner mode to undo/redo window managamanet][Winner mode to undo/redo window managamanet:1]]
;; (map! :leader
;;       (:prefix ("w" . "window")
;;        :desc "Winner redo" "<right>" #'winner-redo
;;        :desc "Winner undo" "<left>" #'winner-undo))
;; Winner mode to undo/redo window managamanet:1 ends here

;; [[file:config.org::*emacsclient][emacsclient:1]]
(after! persp-mode
  (setq persp-emacsclient-init-frame-behaviour-override "main"))
;; emacsclient:1 ends here

;; [[file:config.org::*GitHub Copilot][GitHub Copilot:1]]
(defun my-tab ()
  (interactive)
  (or (copilot-accept-completion)
      (company-indent-or-complete-common nil)))

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (("C-TAB" . 'copilot-accept-completion-by-word)
         ("C-<tab>" . 'copilot-accept-completion-by-word)
         :map company-active-map
         ("<tab>" . 'my-tab)
         ("TAB" . 'my-tab)
         :map company-mode-map
         ("<tab>" . 'my-tab)
         ("TAB" . 'my-tab)))
;; GitHub Copilot:1 ends here

;; [[file:config.org::*Enable treesitter][Enable treesitter:1]]
;; (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode))
;; (add-hook 'csharp-tree-sitter-mode-hook #'lsp)
;; Enable treesitter:1 ends here

;; [[file:config.org::*Typescript/Javascipt/WEB][Typescript/Javascipt/WEB:1]]
;; (setq! typescript-indent-level 2)
;; (setq! js-indent-level 2)
;; (setq! web-mode-css-indent-offset 2)
;; (setq-hook! 'js2-mode-hook +format-with-lsp nil)
;; (setq-hook! js2-jsx-mode-hook +format-with-lsp nil)
;; (setq-hook! 'typescript-mode-hook +format-with-lsp nil)
;; (setq-hook! 'typescript-tsx-mode-hook +format-with-lsp nil)
;; (setq! lsp-eslint-enable t)

;; (add-hook! 'typescript-tsx-mode-hook 'rainbow-mode)
;; (add-hook! 'typescript-mode-hook 'rainbow-mode)
;; (add-hook! 'tsx-mode-hook 'rainbow-mode)

;; (add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-mode))
;; (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
;; Typescript/Javascipt/WEB:1 ends here

;; [[file:config.org::*Typescript/Javascipt/WEB][Typescript/Javascipt/WEB:2]]
;; (require 'react-snippets)
;; Typescript/Javascipt/WEB:2 ends here

;; [[file:config.org::*Require dap-mode][Require dap-mode:1]]
;; (require 'dap-node)
;; (require 'dap-firefox)
;; (require 'dap-ruby)
;; (require 'dap-lldb)
;; (require 'dap-netcore)
;; Require dap-mode:1 ends here

;; [[file:config.org::*Set dap-mode firefox debug program][Set dap-mode firefox debug program:1]]
;; (dap-register-debug-template "Firefox Browse my-project"
;;   (list :type "firefox"
;;         :reAttach t
;;         :request "launch"
;;         :webRoot "/home/simon/development/return-to-wintervale/apps/controller"
;;         :url "http://controller.localhost&"
;;         :name "Fireox Browse my-project"))
;; Set dap-mode firefox debug program:1 ends here

;; [[file:config.org::*Disable all distracting LSP UI Presets][Disable all distracting LSP UI Presets:1]]
;; (setq
;;  ;; lsp-eldoc-render-all nil
;;  lsp-eldoc-enable-hover t

;;  lsp-ui-doc-enable t
;;  lsp-ui-doc-show-with-mouse t

;;  lsp-ui-sideline-show-hover nil
;;  lsp-ui-sideline-show-diagnostics t
;;  lsp-ui-sideline-show-symbol t
;;  lsp-ui-sideline-show-code-actions nil

;;  lsp-ui-peek-enable t
;;  lsp-ui-peek-show-directory t

;;  lsp-headerline-breadcrumb-enable t

;;  lsp-lens-enable nil

;;  lsp-enable-symbol-highlighting t

;;  ;; Disable Signature
;;  lsp-signature-auto-activate t
;;  lsp-signature-render-documentation t
;;  lsp-signature-doc-lines 1

;;  ;; Disable make error highlighting
;;  ;; lsp-prefer-flymake nil
;;  )


;; ;; (setq-hook! 'js2-mode lsp-eldoc-enable-hover nil)

;; ;; (setq lsp-on-idle-hook nil)
;; Disable all distracting LSP UI Presets:1 ends here

;; [[file:config.org::*Disable LSP as default checker and set checker for each major mode][Disable LSP as default checker and set checker for each major mode:1]]
;; (after! lsp-mode
;;   (remove-hook 'lsp-mode-hook #'+lsp-init-flycheck-or-flymake-h))

;; (defun +js/fix-checker ()
;;   "Fix LSP overwritten checkers."
;;   (interactive)
;;   (when (-contains? '(js2-mode typescript-mode js2-jsx-mode rjsx-mode typescript-tsx-mode) major-mode)
;;     (flycheck-select-checker 'javascript-eslint)))

;; (add-hook 'lsp-mode-hook #'+js/fix-checker)


;; (lsp-defun my/filter-typescript ((params &as &PublishDiagnosticsParams :diagnostics)
;;                                  _workspace)
;;   (lsp:set-publish-diagnostics-params-diagnostics
;;    params
;;    (or (seq-filter (-lambda ((&Diagnostic :source? :severity?))
;;                      (and (not (string= "typescript" source?))
;;                           (< severity? lsp/diagnostic-severity-information)))
;;                    diagnostics)
;;        []))
;;   params)


;; (setq lsp-diagnostic-filter 'my/filter-typescript )

;; (setq-default flycheck-disabled-checkers '(javascript-eslint))
;; Disable LSP as default checker and set checker for each major mode:1 ends here

;; [[file:config.org::*Switch to german dictionary (ispell)][Switch to german dictionary (ispell):1]]
;; switch to german dic
(defun fd-switch-dictionary()
  (interactive)
  (let* ((dic ispell-current-dictionary)
         (change (if (string= dic "deutsch8") "english" "deutsch8")))
    (ispell-change-dictionary change)
    (message "Dictionary switched from %s to %s" dic change)
    ))
;; Switch to german dictionary (ispell):1 ends here

;; [[file:config.org::*Test native JSON and native compilation][Test native JSON and native compilation:1]]
(defun test-native-comp ()
  (interactive)
  (if (and (fboundp 'native-comp-available-p)
           (native-comp-available-p))
      (message "Native compilation is available")
    (message "Native complation is *not* available")))

(defun test-native-json ()
  (interactive)
  (if (functionp 'json-serialize)
      (message "Native JSON is available")
    (message "Native JSON is *not* available")))
;; Test native JSON and native compilation:1 ends here
