{
  description = "PDF QR generator dev environment";

  # Use nixos-unstable instead of a pinned commit
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      packages = with nixpkgs.legacyPackages.x86_64-linux; [
        (python3.withPackages (python-pkgs: with python-pkgs; [
          setuptools
          build
          wheel
          reportlab
          qrcode
          crc
        ]))
      ];
    };
  };
}
