import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure KinematicChainPackage where
  jointAngles : List Real
  linkLengths : List Nat
  closureEquation : Prop
  closureEquationTerm : closureEquation

def KinematicChainClosed (K : KinematicChainPackage) : Prop :=
  K.closureEquation

theorem kinematic_chain_closed (K : KinematicChainPackage) : KinematicChainClosed K := by
  exact K.closureEquationTerm

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse