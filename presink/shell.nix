{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.inkscape-with-extensions.override {
      inkscapeExtensions = [
        pkgs.inkscape-extensions.textext
      ];
    })
  ];
}
