import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure LinkageConfigSpace where
  jointAngles : List ℝ
  linkLengths : List ℝ
  assemblyConstraints : Prop
  singularityFree : Prop

structure LinkageConfigSpaceEvidence (L : LinkageConfigSpace) where
  assemblyConstraintsClosed : L.assemblyConstraints
  singularityFreeClosed : L.singularityFree

def LinkageConfigSpaceClosed (L : LinkageConfigSpace) : Prop :=
  L.assemblyConstraints ∧ L.singularityFree

theorem linkage_config_space_closed_from_evidence (L : LinkageConfigSpace)
    (E : LinkageConfigSpaceEvidence L) : LinkageConfigSpaceClosed L := by
  exact And.intro E.assemblyConstraintsClosed E.singularityFreeClosed

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
