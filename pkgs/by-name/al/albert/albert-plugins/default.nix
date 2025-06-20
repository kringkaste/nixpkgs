{
  lib,
  newScope,
}:

lib.makeScope newScope (
  self:
  let
    callPackage = self.callPackage;
  in
  {
    albert = callPackage ../. {
      plugins = [ ];
    };

    time-addup = callPackage ./time-addup { };
    firefox-profiles = callPackage ./firefox-profiles { };
  }
)
