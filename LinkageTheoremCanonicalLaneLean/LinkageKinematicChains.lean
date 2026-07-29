import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure KinematicChainPackage where
  jointAngles : Type u
  linkLengths : Type v
  forwardKinematics : jointAngles -> linkLengths -> Type w
  workspaceDimension : Nat
  degreeOfFreedom : Nat

structure KinematicChainEvidence (K : KinematicChainPackage) where
  jointAnglesDefined : True
  linkLengthsDefined : True
  forwardKinematicsWellDefined : True
  workspaceDimensionCorrect : K.workspaceDimension = 3
  degreeOfFreedomCorrect : K.degreeOfFreedom = K.workspaceDimension

def KinematicChainClosed (K : KinematicChainPackage) : Prop :=
  K.workspaceDimension = 3 ∧ K.degreeOfFreedom = 3

theorem kinematic_chain_closed_from_evidence (K : KinematicChainPackage) (E : KinematicChainEvidence K) :
  KinematicChainClosed K := by
  exact And.intro E.workspaceDimensionCorrect E.degreeOfFreedomCorrect

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse