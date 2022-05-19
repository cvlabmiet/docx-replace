{ pkgs ? import <nixpkgs> {} }:

with pkgs; with python3Packages; buildPythonApplication rec {
  pname = "docx-replace";
  version = builtins.head (builtins.match ".*__version__ = '([[:digit:]\\.]+)'.*" (builtins.readFile ./docx-replace));

  src = ./.;

  propagatedBuildInputs = [ python-docx ];

  meta = with lib; {
    homepage = https://github.com/cvlabmiet/docx-replace;
    description = "Replace text inside docx file";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ igsha ];
  };
}
