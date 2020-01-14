;; TODO
;;; test-org-jump.el --- Tests for org-jump -*- lexical-binding:t -*-

;; Copyright (C) 2018 Daniel Hubmann

;; This file is not part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Testing of org-jump package. Uses buttercup testing library.

;;; Code:


;; * Requirements

(require 'buttercup)
(require 'ert)

(require 'org-jump)

;; * Helpers

;; * Heading components

(describe "Org-jump: "
  (describe "Org-jump--get-matched-headings-components"
    (describe "works with the followinng args:"
      (it "a file or buffer name and an org-ql query."
        (expect ...)
        (expect ...))
      (it "a list of file or buffer names and an org-ql query.")
      (it "a list with a file or buffer name and an org-ql query.")
      (it "a list with a list of file or buffer names and an org-ql query.")
      (it "multiple lists with a file or buffer name and an org-ql query.")
      (it "multiple lists with a list of file or buffer names and an org-ql query.")
      )
    (describe "supports all types:"
      (it "a normal org-ql")
      (it "narrowing to region.")
      (it "narrowing to heading matching outline path (olp)."
        (expect without parent)
        (expect with parent))
      (it "narrowing to heading with ID."
        (expect without parent)
        (expect with parent))
      (it "narrowing to heading with CUSTOM_ID."
        (expect without parent)
        (expect with parent))
      (it "narrowing to heading at a point."
        (expect without parent)
        (expect with parent))
      (it "narrowing to heading at a marker."
        (expect without parent)
        (expect with parent))
      )
    (describe "returns"
      (it "a concatenated list when used with multiple queries.")
      (it "a list with duplicates removed when arg unique is non-nil.")
      )
    ))

;;; org-jump-test.el ends here
