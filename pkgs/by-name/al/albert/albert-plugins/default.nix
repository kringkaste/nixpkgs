{
  lib,
  newScope,
  texliveBasic,
  config,
}:

lib.makeScope newScope (
  self:
  let
    callPackage = self.callPackage;
  in
  {
    pidgin = callPackage ../. {
      plugins = [ ];
    };

    time-addup = callPackage ./time-addup { };
  }
)
