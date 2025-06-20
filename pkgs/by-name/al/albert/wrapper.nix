{
  lib,
  symlinkJoin,
  albert,
  makeWrapper,
  plugins,
}:

let
  extraArgs = map (x: x.wrapArgs or "") plugins;
in
symlinkJoin {
  name = "albert-with-plugins-${albert.version}";

  paths = [ albert ] ++ plugins;

  nativeBuildInputs = [ makeWrapper ];
}
