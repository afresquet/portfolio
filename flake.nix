{
  description = "afresquet.com";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          fs = pkgs.lib.fileset;
        in
        {
          default = pkgs.stdenvNoCC.mkDerivation {
            name = "afresquet.com";
            src = fs.toSource {
              root = ./.;
              fileset = fs.unions [
                ./config.toml
                ./content
                ./static
                ./templates
              ];
            };
            nativeBuildInputs = [ pkgs.zola ];
            # Zola builds an HTTP client at startup and panics on Linux without CA certificates.
            SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
            buildPhase = "zola build --output-dir $out";
            dontInstall = true;
          };
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [ pkgs.zola ];
          };
        }
      );
    };
}
