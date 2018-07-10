{ pkgs ? import <nixpkgs> {} }:

with pkgs; with python3Packages; buildPythonApplication rec {
  pname = "docx-replace";
  version = "0.1.2";

  src = ./.;

  propagatedBuildInputs = [ python-docx ];

  meta = with stdenv.lib; {
    homepage = https://github.com/cvlabmiet/docx-replace;
    description = "Replace text inside docx file";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ igsha ];
  };
}
