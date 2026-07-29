import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure LinkageMechanismPackage where
  jointTypes : List String
  linkLengths : List Nat
  connectivityGraph : Prop
  mobility : Nat
  mobilityTerm : mobility = (3 * (jointTypes.length - 1) - 2 * linkLengths.length)

def LinkageMechanismClosed (L : LinkageMechanismPackage) : Prop :=
  L.connectivityGraph ∧ (L.mobility = (3 * (L.jointTypes.length - 1) - 2 * L.linkLengths.length))

theorem linkage_mechanism_closed (L : LinkageMechanismPackage) : LinkageMechanismClosed L := by
  exact And.intro L.connectivityGraph L.mobilityTerm

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse