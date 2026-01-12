{
  description = "Ma Petite Compagnie - Application de gestion pour compagnie de théâtre";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          default = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              nodejs_22
              nodePackages.npm
              openssl
            ];

            shellHook = ''
              echo "Ma Petite Compagnie - Dev environment ready"
              echo "Node $(node --version) | npm $(npm --version)"
            '';
          };
        });
    };
}
