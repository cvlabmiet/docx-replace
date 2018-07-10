# docx-replace

Replace words inside docx documents using `python-docx` module.

# Installation

Use `pip` and install the program by url using [release page](https://github.com/cvlabmiet/docx-replace/releases/latest):
```sh
$ pip install https://github.com/cvlabmiet/docx-replace/archive/v0.1.2.zip
```

On NixOS (latest version):
```sh
$ nix-env -if https://api.github.com/repos/cvlabmiet/docx-replace/tarball/master
```

# Usage

The program `docx-replace` has convenient command line interface, provided by `argparse` python module:
```sh
$ docx-replace --help
usage: docx-replace [-h] --output OUTPUT --pattern PATTERN [PATTERN ...] docx

Replace text in docx. Use some complex text like "<[%MyText%]>", to guarantee
the replacement

positional arguments:
  docx                  the source docx file

optional arguments:
  -h, --help            show this help message and exit
  --output OUTPUT, -o OUTPUT
                        output file
  --pattern PATTERN [PATTERN ...], -p PATTERN [PATTERN ...]
                        patterns by format "pattern='some text'"
```

Also it has `--version` flag to check the installed program version:
```sh
docx-replace 0.1.2
```

The program will replace all occurrence of "pattern" inside `docx` file.
Patterns are passed as expressions like `"pattern=replecement_text"`.
