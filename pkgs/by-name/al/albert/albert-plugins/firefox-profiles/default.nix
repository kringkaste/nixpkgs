{
  lib,
  stdenv,
  fetchFromGitHub,
  albert,
}:

stdenv.mkDerivation rec {
  pname = "firefox-profiles";
  version = "0.2.0";
  src = fetchFromGitHub {
    owner = "kringkaste";
    repo = "albert-firefox-profiles";
    rev = "refs/tags/${version}";
    hash = "sha256-huWY+vTKd0y3Kkca6iK3WN1nDj5ixzRtt4RWk9jGyp4=";
  };

  postInstall = ''
    mkdir -p $out/share/albert/python/plugins/firefox-profiles
    ls
    mv __init__.py firefox.png $out/share/albert/python/plugins/firefox-profiles
  '';

  meta = with lib; {
    homepage = "https://github.com/kringkaste/albert-firefox-profiles";
    description = "Extension for Albert to launch Firefox with an profile.";
    license = licenses.mit;
    maintainers = with maintainers; [kringkaste];
  };
}
