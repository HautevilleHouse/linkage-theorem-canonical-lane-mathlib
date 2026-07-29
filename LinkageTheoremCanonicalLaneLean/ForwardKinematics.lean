import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure ForwardKinematicsPackage where
  workspaceRegion : Prop
  reachableSet : Prop
  workspaceInclusion : workspaceRegion → reachableSet
  workspaceInclusionTerm : workspaceInclusion

def ForwardKinematicsClosed (F : ForwardKinematicsPackage) : Prop :=
  F.workspaceRegion ∧ F.reachableSet

theorem forward_kinematics_closed (F : ForwardKinematicsPackage) (h : F.workspaceRegion) : ForwardKinematicsClosed F := by
  refine And.intro h (F.workspaceInclusionTerm h)

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse