;;; eproject-lang-haskell.el --- support for Haskell projects

;; Copyright (C) 2011 Luke Randall

;; Author: Luke Randall <luke.randall@gmail.com>
;; Keywords: eproject

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

;;; Commentary:

;;; Code:

(define-project-type haskell (generic) (look-for "Setup.hs" :glob)
  :irrelevant-files ("^[.]" "^[#]" "cabal-dev"))

(define-project-type haskell-lit (generic) (look-for "Setup.lhs" :glob)
  :irrelevant-files ("^[.]" "^[#]" "cabal-dev"))

(define-project-type haskell-cabal (generic) (look-for "*.cabal" :glob)
  :irrelevant-files ("^[.]" "^[#]" "cabal-dev" "dist"))

(provide 'eproject-lang-haskell)
