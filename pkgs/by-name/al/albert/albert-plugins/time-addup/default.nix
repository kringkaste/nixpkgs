{
  lib,
  stdenv,
  fetchFromGitHub,
  albert,
}:

stdenv.mkDerivation rec {
  name = "time-addup";
  version = "0.2.0";
  src = fetchFromGitHub {
    owner = "kringkaste";
    repo = "albert-time-addup";
    rev = "refs/tags/${version}";
    hash = "sha256-wMXjGHEdrEqIfnHd41Wgp60NYvgHuXq+dYd1Nfx9TdE=";
  };

  postInstall = ''
    mkdir -p $out/share/albert/python/plugins/time-addup
    ls
    mv __init__.py clock.svg $out/share/albert/python/plugins/time-addup
  '';

  meta = with lib; {
    homepage = "https://github.com/kringkaste/albert-time-addup";
    description = "Extension for Albert to add-up time ranges into a floating-point number of hours.";
    license = licenses.mit;
    maintainers = with maintainers; [kringkaste];
  };
}
