import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure MotionGenerationPackage {K : KinematicChainPackage} where
  trajectory : K.jointAngles -> Type u
  pathContinuity : Prop
  workspaceConstraint : Prop

structure MotionGenerationEvidence {K : KinematicChainPackage} (M : MotionGenerationPackage K) where
  pathContinuityClosed : M.pathContinuity
  workspaceConstraintClosed : M.workspaceConstraint

def MotionGenerationClosed {K : KinematicChainPackage} (M : MotionGenerationPackage K) : Prop :=
  M.pathContinuity ∧ M.workspaceConstraint

theorem motion_generation_closed_from_evidence {K : KinematicChainPackage} (M : MotionGenerationPackage K) (E : MotionGenerationEvidence M) :
  MotionGenerationClosed M := by
  exact And.intro E.pathContinuityClosed E.workspaceConstraintClosed

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse