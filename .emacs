(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; for mac, put ~/.emacs.d/init.el

;; inhibit startup message
(setq inhibit-startup-message t)

;; font setting 
;; (add-to-list 'default-frame-alist '(font . "Ricty Diminished-20"))

;; バックスラッシュ
;; https://gist.github.com/1689037
(define-key global-map [?¥] [?\\])
(define-key global-map [?\C-¥] [?\C-\\])
(define-key global-map [?\M-¥] [?\M-\\])
(define-key global-map [?\C-\M-¥] [?\C-\M-\\])

;; カーソルの点滅を止める
(blink-cursor-mode 0)

;; ツールバーを非表示にする
;(tool-bar-mode -1)

;; スクラッチバッファのメッセージをなくす
(setq initial-scratch-message "")

;; スクロールを１行ずつにする
(setq scroll-step 2)
(setq scroll-margin 5)
(setq
 ;; ホイールでスクロールする行数を設定
 mouse-wheel-scroll-amount '(1 ((shift) . 2) ((control)))
 ;; 速度を無視する
 mouse-wheel-progressive-speed nil)

;; バックアップファイルをつくらない
(setq make-backup-files nil)
(setq auto-save-default nil)

;; 行間
(setq-default line-spacing 3)

;; ビープ音を無くす
(setq ring-bell-function 'ignore)

;====================================
; Initial フレームサイズ,位置,色,フォントなど
;====================================
(setq initial-frame-alist
(append (list
'(width . 100) ;; ウィンドウ幅
'(height . 55) ;; ウィンドウ高さ
;;'(top . 30) ;; 表示位置
;;'(left . 1100) ;; 表示位置
)
initial-frame-alist))
(setq default-frame-alist initial-frame-alist)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; add melpa
;; from https://monologu.com/add-melpa/

(when (require 'package nil t)
  (add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/"))
  (package-initialize))

;; C++
; arduinoスケッチ(.ino)をc++モードで開く
(setq auto-mode-alist
      (append '(("\\.ino$" . c++-mode))
              auto-mode-alist))
