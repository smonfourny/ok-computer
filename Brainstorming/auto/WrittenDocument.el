(TeX-add-style-hook
 "WrittenDocument"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1in")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "geometry"
    "tabularx"
    "graphicx"))
 :latex)

