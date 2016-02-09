(require 'package)
	(add-to-list 'package-archives'
	   ("elpa" . "http://tromey.com/elpa/") t)
	(add-to-list 'package-archives'
	   ("marmalade" . "http://marmalade-repo.org/packages/") t)
	(add-to-list 'package-archives'
	   ("melpa" . "http://melpa.org/packages/") t)
	(package-initialize)
    (let ((default-directory "/usr/local/share/emacs/site-lisp/"))
       (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/share/emacs/site-lisp/w3m")
(require 'init-w3m)
(global-visual-line-mode 1)
(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)
(global-set-key (kbd "C-M-n")
     (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "C-M-p")
     (lambda () (interactive) (previous-line 5)))
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
			                                     "xelatex -interaction nonstopmode %f"))
(setq org-agenda-files (list "~/Yandex.Disk.localized/org/todo.org"))
(global-set-key (kbd "<f12>") 'org-agenda)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-M-b") 'org-insert-todo-heading)
(setq org-todo-keywords
      (quote ((sequence "NEXT(n)" "TODO(t)" "|" "DONE(d)")
	      (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))
(defadvice kill-ring-save (before slickcopy activate compile)
   (interactive
    (if mark-active (list (region-beginning) (region-end))
      (list (line-beginning-position)
            (line-beginning-position 2)))))
 (defadvice kill-region (before slickcut activate compile)
   (interactive
    (if mark-active (list (region-beginning) (region-end))
      (list (line-beginning-position)
            (line-beginning-position 2)))))
(setq org-todo-keyword-faces
      (quote (("NEXT" :foreground "blue" :weight bold)
          ("TODO" :foreground "red" :weight bold)
	      ("DONE" :foreground "forest green" :weight bold)
	      ("WAITING" :foreground "orange" :weight bold)
	      ("HOLD" :foreground "magenta" :weight bold)
	      ("CANCELLED" :foreground "forest green" :weight bold)
	      ("MEETING" :foreground "forest green" :weight bold)
	      ("PHONE" :foreground "forest green" :weight bold))))
(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
	      ("WAITING" ("WAITING" . t))
	      ("HOLD" ("WAITING") ("HOLD" . t))
	      (done ("WAITING") ("HOLD"))
	      ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
	      ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
	      ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
	      ("r" "respond" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
	      ("n" "note" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
	      ("j" "Journal" entry (file+datetree "~/Yandex.Disk.localized/org/refile.org")
	       "* %?\n%U\n" :clock-in t :clock-resume t)
	      ("w" "org-protocol" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* TODO Review %c\n%U\n" :immediate-finish t)
	      ("m" "Meeting" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
	      ("p" "Phone call" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
	      ("h" "Habit" entry (file "~/Yandex.Disk.localized/org/refile.org")
	       "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))
;; Remove empty LOGBOOK drawers on clock out
(electric-pair-mode 1)
(add-to-list 'load-path
               "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;; latex-mode

;;;;;;;;;;;;;;AUCTex initiating;;;;
(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;;;;;;;;;;;;RefTex;;;;;;;;;;;;;;;;
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-enable-partial-scans t)
(setq reftex-save-parse-info t)
(setq reftex-use-multiple-selection-buffers t)
(setq reftex-toc-split-windows-horizontally t) ;;*toc*buffer鍦ㄥ乏渚с��
(setq reftex-toc-split-windows-fraction 0.2)  ;;*toc*buffer 浣跨敤鏁翠釜frame鐨勬瘮渚嬨��
(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t)
;;;;;;;;;;;;;;;CDLatex;;;;;;;;;;;;
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
(autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)

; yasnippet
(yas/initialize)

(add-hook 'outline-minor-mode-hook
	  (lambda () (local-set-key "\C-c\C-o" outline-mode-prefix-map)))
;;;;;;;;;math-mode;;;;;;;;;;;;;;;
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;;;;;;;;;LaTex-mode settings;;;;;
(add-hook 'LaTeX-mode-hook (lambda ()
			     (TeX-fold-mode 1)
			     (turn-off-auto-fill)              
			     (linum-mode 1)
			     (auto-complete-mode 1)
			     (LaTeX-math-mode 1)
			     (outline-minor-mode 1)            ;;浣跨敤 LaTeX mode 鐨勬椂鍊欐墦寮� outline mode
			     (setq TeX-show-compilation nil)   ;;NOT display compilation windows
			     (setq TeX-global-PDF-mode t       ;;PDF mode enable, not plain
				   TeX-engine 'xetex)  ;;use xelatex default
			     (setq TeX-clean-confirm nil)
			     (setq TeX-save-query nil)
			     (latex-electric-env-pair-mode 1)
			     (imenu-add-menubar-index)
			     (setq font-latex-fontify-script t)
			     (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)
;			     (setq TeX-electric-escape t)      ;; 鎸� \ 鍚庡厜鏍囪烦鍒癿ini-buffer閲岄潰杈撳叆鍛戒护
;			     (setq TeX-view-program-list '(("Evince" "evince %o"))) ;;閲嶆柊瀹氫箟pdf viewer
;			     (setq TeX-view-program-selection '((output-pdf "Evince")))
(setq TeX-view-program-selection '((output-pdf "Skim")(output-dvi "Skim")))

(push '("Latexmk" "latexmk -xelatex %s" TeX-run-TeX nil t
      :help "Run Latexmk on file") TeX-command-list)

			     (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
			     (setq TeX-command-default "XeLaTeX")
			     (setq TeX-fold-env-spec-list (quote (("[comment]" ("comment")) ("[figure]" ("figure")) ("[table]" ("table"))("[itemize]"("itemize"))("[enumerate]"("enumerate"))("[description]"("description"))("[overpic]"("overpic"))("[tabularx]"("tabularx"))("[code]"("code"))("[shell]"("shell")))))

			     ;;瀹氫箟latex-mode涓嬬殑蹇嵎閿�
			     (define-key LaTeX-mode-map (kbd "C-c C-p") 'reftex-parse-all)

			                       ;;;;;;璁剧疆鏇存繁灞傜殑鐩綍;;;;;;;;;;;;;
			     (setq reftex-section-levels
				   '(("part" . 0) ("chapter" . 1) ("section" . 2) ("subsection" . 3)
				     ("frametitle" . 4) ("subsubsection" . 4) ("paragraph" . 5)
				     ("subparagraph" . 6) ("addchap" . -1) ("addsec" . -2)))


			     (setq LaTeX-section-hook
				   '(LaTeX-section-heading
				     LaTeX-section-title
				     ;;LaTeX-section-toc
				     LaTeX-section-section
				     LaTeX-section-label))
			     ));;


(provide 'my-auctex)

(add-to-list 'load-path "~/.emacs.d/org-ref-master")
;; make sure you have dash, helm, helm-bibtex, ebib, s, f, hydra and key-chord
;; in your load-path
(require 'ess-site)
(require 'org-ref)

;; optional but very useful libraries in org-ref
(require 'doi-utils)
(require 'org-ref-bibtex)
(require 'org-ref-pubmed)
(require 'org-ref-arxiv)
(require 'org-ref-sci-id)
(setq reftex-default-bibliography '("~/Dropbox/bibliography/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "~/Dropbox/bibliography/notes.org"
       org-ref-default-bibliography '("~/Dropbox/bibliography/references.bib")
	         org-ref-pdf-directory "~/Dropbox/bibliography/bibtex-pdfs/")
;; *** helm-bibtex

(setq helm-bibtex-bibliography "~/Dropbox/bibliography/references.bib")
(setq helm-bibtex-library-path "~/Dropbox/bibliography/bibtex-pdfs")

;; open pdf with system pdf viewer (works on mac)
(setq helm-bibtex-pdf-open-function
   (lambda (fpath)
	    (start-process "open" "*open*" "open" fpath)))

;; alternative
;; (setq helm-bibtex-pdf-open-function 'org-open-file)

(setq helm-bibtex-notes-path "~/Dropbox/bibliography/helm-bibtex-notes")
(global-set-key [f10] 'org-ref-open-bibtex-notes)
(global-set-key [f11] 'org-ref-open-bibtex-pdf)
(global-set-key [f12] 'org-ref-open-in-browser)

(add-to-list 'load-path "~/.emacs.d/auto-complete")
;(require 'org-mode)
(require 'cdlatex)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(require 'auto-complete-config)
(add-to-list 'ac-modes 'latex-mode)
(add-to-list 'ac-modes 'org-mode)
(ac-config-default)
(setq auto-mode-alist
      ;; 将文件模式和文件后缀关联起来
      (append '(("\\.py\\'" . python-mode)
		("\\.s?html?\\'" . html-helper-mode)
		("\\.asp\\'" . html-helper-mode)
		("\\.phtml\\'" . html-helper-mode)
		("\\.css\\'" . css-mode)
		("\\.R\\'" . R-mode))
	                    auto-mode-alist))
