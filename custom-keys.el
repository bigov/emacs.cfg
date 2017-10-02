;;
;; file: custom-keys.el
;;
;; Индивидуальная настройка работы клавишных комбинаций
;;
(provide 'custom-keys)

;; Рекомендуемые клавиши для ORG
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;;<f2> <f2>, <f2> 2, C-x 6 <f2>, C-x 6 2
;;вызов команды "2C-two-columns"
(global-unset-key (kbd "<f2> <f2>"))
(global-unset-key (kbd "<f2> 2"))
;; ^^
;; Сохранить текущий файл
(global-set-key (kbd "<f2>") 'save-buffer)

;; Ввод имени функции для быстрого перехода
(global-set-key (kbd "<f6>") 'imenu)

;; Открыть меню
(global-set-key (kbd "<f9>") 'menu-bar-open)

;; Список активных буферов для быстрого перехода
(global-set-key (kbd "ESC <f9>") 'bs-show)

;; Выход из Emacs
(global-unset-key (kbd "<f10>"))
(global-set-key (kbd "<f10>") 'save-buffers-kill-terminal)

;;C-z, C-x C-z вызов команды "suspend-frame"
;;(global-unset-key (kbd "C-z"))
(cua-mode)
;; ^^
;;(global-set-key (kbd "C-с") 'kill-ring-save)
(global-set-key (kbd "C-с") 'cua-copy-region)
;;(global-set-key (kbd "C-ч") 'cua-cut-region)
(global-set-key (kbd "C-м") 'cua-paste)
(global-set-key (kbd "C-я") 'undo)

;; Дублирование базовых команд в русской раскладке
(global-set-key (kbd "C-н") 'yank)           ; Ru: C-y
(global-set-key (kbd "M-ц") 'kill-ring-save) ; Ru: Alt-w
(global-set-key (kbd "C-ц") 'kill-region)    ; Ru: C-w
(global-set-key (kbd "C-ч в") 'dired)        ; Ru: C-x d
(global-set-key (kbd "C-ч 1") 'delete-other-windows)
