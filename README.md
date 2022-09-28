# bass chip32 Virtual Machine

The assembler used to compile chip32 virtual machine binaries is the official bass assembler.<br>
The "architectures/chip32.vm.arch" architecture file has been provided to assemble the chip32 instructions using bass.<br>
The development branch of bass v19 is used & the source code can be found here:<br>
https://github.com/ARM9/bass/tree/devel

<br />

## Usage
Place the bass executable for your OS in a directory along with the "architectures" folder in the same directory.<br>
```sh
bass [source_in]
or
bass [source_in] -o [file_out]
```

<br />

## Build instructions
Compile to single executable on GCC using make.
```sh
cd bass
make
```

<br />

## Errata of "doc/chip32vm.txt" V 0.50
"print" instruction is now changed to "printf"<br>
"fill" instruction is now changed to "xfill"<br>
"core" instruction is now changed from immediate to register style format "core rx"<br>
"queryslot" instruction was changed from $4A to $5D