import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure WorkspaceClassificationPackage {K : KinematicChainPackage} {L : LoopClosurePackage K} where
  workspaceRegion : Type u
  reachableSet : workspaceRegion -> Prop
  singularConfiguration : Prop
  connectivityComponent : Prop

structure WorkspaceClassificationEvidence {K : KinematicChainPackage} {L : LoopClosurePackage K} (W : WorkspaceClassificationPackage K L) where
  reachableSetClosed : W.reachableSet
  singularConfigurationClosed : W.singularConfiguration
  connectivityComponentClosed : W.connectivityComponent

def WorkspaceClassificationClosed {K : KinematicChainPackage} {L : LoopClosurePackage K} (W : WorkspaceClassificationPackage K L) : Prop :=
  W.reachableSet ∧ W.singularConfiguration ∧ W.connectivityComponent

theorem workspace_classification_closed_from_evidence {K : KinematicChainPackage} {L : LoopClosurePackage K} (W : WorkspaceClassificationPackage K L) (E : WorkspaceClassificationEvidence W) :
  WorkspaceClassificationClosed W := by
  exact And.intro E.reachableSetClosed (And.intro E.singularConfigurationClosed E.connectivityComponentClosed)

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse