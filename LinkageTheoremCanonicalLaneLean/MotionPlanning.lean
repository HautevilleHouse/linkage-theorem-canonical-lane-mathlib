import HautevilleHouse.LinkageTheoremCanonicalLaneLean.LinkageAssembly

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure MotionPlanningPackage {C : LinkageConfig} (A : AssemblyPackage C) where
  continuousMotion : Prop
  pathConnectedModuli : Prop
  reachableConfigurations : Prop

structure MotionPlanningEvidence {C : LinkageConfig} {A : AssemblyPackage C} (M : MotionPlanningPackage A) where
  continuousMotionClosed : M.continuousMotion
  pathConnectedModuliClosed : M.pathConnectedModuli
  reachableConfigurationsClosed : M.reachableConfigurations

def MotionPlanningClosed {C : LinkageConfig} {A : AssemblyPackage C} (M : MotionPlanningPackage A) : Prop :=
  M.continuousMotion ∧ M.pathConnectedModuli ∧ M.reachableConfigurations

theorem motion_planning_closed_from_evidence {C : LinkageConfig} {A : AssemblyPackage C} (M : MotionPlanningPackage A) (E : MotionPlanningEvidence M) :
    MotionPlanningClosed M := by
  exact And.intro E.continuousMotionClosed (And.intro E.pathConnectedModuliClosed E.reachableConfigurationsClosed)

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse