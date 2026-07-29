import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure AssemblyModesPackage where
  modeCount : Nat
  modeDecomposition : Prop
  modeDecompositionTerm : modeDecomposition

def AssemblyModesClosed (A : AssemblyModesPackage) : Prop :=
  A.modeDecomposition

theorem assembly_modes_closed (A : AssemblyModesPackage) : AssemblyModesClosed A := by
  exact A.modeDecompositionTerm

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse