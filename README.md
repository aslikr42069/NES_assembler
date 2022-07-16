# NES assembler
Basic assembler for making NES games

## Building
You'll need chicken scheme installed. This assumes that the chicken csc binary
is called `chicken-csc`, on some systems it's just called `csc`.
If so, modify the file `Makefile` and change `chicken-csc` to `csc`.
Then, run `make`



To install the dependencies on Linux, run `./install-deps.sh`. This
will also fix the Makefile on supported distros.
