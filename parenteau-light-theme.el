;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; -----------------------------------
;;
;; Parenteau-light : A light color theme
;;
;; -----------------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme parenteau-light  "A dark color theme for Emacs based on Spolksy")

(custom-theme-set-variables
  'parenteau-light
  '(linum-format "%7i   "))

(let ((*background*         "#ecf0f3")
      (*comments*           "#839bb2")
      (*constant*           "#da331c")
      (*current-line*       "#d0d9e0")
      (*cursor-underscore*  "#0baeb9")
      (*keywords*           "#f71e7a")
      (*line-number*        "#ecf0f3")
      (*line-fg*            "#839cb2")

      (*type-face*          "#3663a7")
      (*method-declaration* "#1b6aa0")
      (*mode-line-bg*       "#5a7896")
      (*mode-inactive-bg*   "#395571")
      (*mode-line-fg*       "#ebeced")
      (*mode-inactive-fg*   "#587491")
      (*normal*             "#283e55")
      (*number*             "#04808a")
      (*operators*          "#6d48d7")
      (*warning*            "#f07e53")
      (*regexp*             "#a63a62")
      (*string*             "#047880")
      (*variable*           "#339e57")
      (*visual-selection*   "#e8dfcb"))

  (custom-theme-set-faces
   'parenteau-light

   `(bold ((t (:bold t))))
   `(italic ((t (:italic t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background* :foreground, *normal*))))
   `(header-line ((t (:background, *mode-line-bg* :foreground, *normal*)))) ;; info header
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(col-highlight ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line* :underline nil))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*, :slant italic))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*, :weight bold))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*, :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground, *warning*))))
   `(font-lock-number-face ((t (:foreground, *number*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *type-face*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *warning*))))

   ;; GUI
   `(fringe ((t (:background, *background*))))
   `(linum ((t (:background, *line-number* :foreground, *line-fg*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
   `(cursor ((t (:background, *cursor-underscore*))))
   `(text-cursor ((t (:background, *normal*))))
   `(vertical-border ((t (:foreground, *background*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *warning* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *keywords* :foreground, *normal* :weight bold))))

   ;; search/-underscore
   `(isearch ((t (:background, *regexp* :foreground, *visual-selection*))))
   `(isearch-fail ((t (:background, *warning*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *visual-selection*))))

   ))

;; autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'parenteau-light)

;; Local Variables:
;; no-byte-compile: t
;; End:


