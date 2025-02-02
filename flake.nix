{
  description = "Flake utils demo";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            (python312.withPackages (p: with p; [ venvShellHook ]))
            bashInteractive
            ninja
            cmake
            llvmPackages_latest.llvm
            llvmPackages_latest.bintools
          ];
        };
      }
    );
}
