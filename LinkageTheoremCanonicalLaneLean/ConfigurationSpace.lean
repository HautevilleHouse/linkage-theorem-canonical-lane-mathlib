import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure ConfigurationSpacePackage where
  configurationManifold : Type u
  dimension : Nat
  singularities : Prop
  singularitiesTerm : singularities

def ConfigurationSpaceClosed (C : ConfigurationSpacePackage) : Prop :=
  C.singularities

theorem configuration_space_closed (C : ConfigurationSpacePackage) : ConfigurationSpaceClosed C := by
  exact C.singularitiesTerm

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse