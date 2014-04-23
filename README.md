pygments-latex-styles
=====================

Demonstrate various styles of highlighting source code in LaTeX using pygments

`gen.bash` is a script that will syntax highlight two source code
files using `pygmentize` and display it in the LaTeX document
`pygment-styles.pdf` using every possible style in `pygmentize`.  You can use
this script to help select a style.  Or, you can just look at
`pygment-styles.pdf`.

If you want to add a file to be highlighted, make sure you call
`pygmentize` on it in `gen.bash`, and then add a new figure in
`doc.tex`.
