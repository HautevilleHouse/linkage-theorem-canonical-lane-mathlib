import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure LoopClosurePackage (K : KinematicChainPackage) where
  closureEquations : K.forwardKinematics K.jointAngles K.linkLengths -> Prop
  solvabilityCondition : Prop
  solutionSet : Type u

structure LoopClosureEvidence {K : KinematicChainPackage} (L : LoopClosurePackage K) where
  closureEquationsClosed : L.closureEquations
  solvabilityConditionClosed : L.solvabilityCondition

def LoopClosureClosed {K : KinematicChainPackage} (L : LoopClosurePackage K) : Prop :=
  L.closureEquations ∧ L.solvabilityCondition

theorem loop_closure_closed_from_evidence {K : KinematicChainPackage} (L : LoopClosurePackage K) (E : LoopClosureEvidence L) :
  LoopClosureClosed L := by
  exact And.intro E.closureEquationsClosed E.solvabilityConditionClosed

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse