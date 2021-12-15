{
  outputs = { self, nixpkgs }: let system = "x86_64-linux"; pkgs = import nixpkgs { inherit system; }; in {
    devShell."${system}" = pkgs.mkShell {
      packages = [ pkgs.nodePackages.prisma ];
    };
  };
}
