# pdf

### Compressing pdf

1. Type the following command \([source](https://www.techwalla.com/articles/reduce-pdf-file-size-linux)\)`$ gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf`
2. Set the input file name properly as well as the output file name if wanted.
3. in `-dPDFSETTINGS` use:
   * `/screen` for lowest quality
   * `/ebook` for medium quality
   * `/printer` and /prepress for high quality

### Modifying a pdf

* command `$ convert input.pdf output.pdf`
  * Options:
    * `density` image resolution
    * `rotate` rotation angle degrees
    * `attenuate` noise addition
    * `noise` noise peak reduction
    * `flatten` no virtual offline across layers
    * `sharpen` Gaussin operator to sharpen the image
  * Example \([source](https://gist.github.com/andyrbell/25c8632e15d17c83a54602f6acde2724)\):  `$ convert -density 150 input.pdf -rotate "$([ $((RANDOM % 2)) -eq 1 ] && echo -)0.$(($RANDOM % 3))" -attenuate 0.15 +noise Multiplicative -flatten -attenuate 0.02 +noise Multiplicative -sharpen 0x1.0 output.pdf`

### Metadata info of a pdf

* command pdfinfo: `$ pdfinfo file.pdf`



