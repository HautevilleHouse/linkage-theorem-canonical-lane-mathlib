import HautevilleHouse.LinkageTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure AssemblyPackage (C : LinkageConfig) where
  graphRealizable : Prop
  edgeLengthConstraints : Prop
  jointPositions : Type
  smoothModuliSpace : Prop

structure AssemblyEvidence {C : LinkageConfig} (A : AssemblyPackage C) where
  graphRealizableClosed : A.graphRealizable
  edgeLengthConstraintsClosed : A.edgeLengthConstraints
  smoothModuliSpaceClosed : A.smoothModuliSpace

def AssemblyClosed {C : LinkageConfig} (A : AssemblyPackage C) : Prop :=
  A.graphRealizable ∧ A.edgeLengthConstraints ∧ A.smoothModuliSpace

theorem assembly_closed_from_evidence {C : LinkageConfig} (A : AssemblyPackage C) (E : AssemblyEvidence A) :
    AssemblyClosed A := by
  exact And.intro E.graphRealizableClosed (And.intro E.edgeLengthConstraintsClosed E.smoothModuliSpaceClosed)

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse