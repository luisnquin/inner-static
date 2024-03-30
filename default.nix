{stdenvNoCC, ...}:
stdenvNoCC.mkDerivation rec {
  pname = "inner-static";
  version = "unstable";

  src = builtins.path {
    name = "${pname}-source";
    path = ./.;
  };

  installPhase = ''
    mkdir -p $out/var/www/html
    cp -r ./root/* $out/var/www/html
  '';
}
