{ mkDerivation, base, kan-extensions, lens, stdenv }:
mkDerivation {
  pname = "parametricity-proofs";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base kan-extensions lens ];
  license = stdenv.lib.licenses.bsd3;
}
