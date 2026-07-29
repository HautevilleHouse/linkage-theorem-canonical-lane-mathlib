import HautevilleHouse.LinkageTheoremCanonicalLaneLean.SingularityAvoidance

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure AlgebraicCurveLinkagePackage {C : LinkageConfig} {A : AssemblyPackage C} {M : MotionPlanningPackage A} {S : SingularityAvoidancePackage M} where
  curveDegree : Nat
  rationalParameterization : Prop
  algorithmConstruction : Prop

def AlgebraicCurveLinkageClosed {C : LinkageConfig} {A : AssemblyPackage C} {M : MotionPlanningPackage A} {S : SingularityAvoidancePackage M} (P : AlgebraicCurveLinkagePackage S) : Prop :=
  P.rationalParameterization ∧ P.algorithmConstruction

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse