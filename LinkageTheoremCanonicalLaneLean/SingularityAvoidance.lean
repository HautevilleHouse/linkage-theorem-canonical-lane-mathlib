import HautevilleHouse.LinkageTheoremCanonicalLaneLean.MotionPlanning

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure SingularityAvoidancePackage {C : LinkageConfig} {A : AssemblyPackage C} {M : MotionPlanningPackage A} where
  nonDegenerateConfigurations : Prop
  singularityFreePaths : Prop
  criticalConfigurations : Type

def SingularityAvoidanceClosed {C : LinkageConfig} {A : AssemblyPackage C} {M : MotionPlanningPackage A} (S : SingularityAvoidancePackage M) : Prop :=
  S.nonDegenerateConfigurations ∧ S.singularityFreePaths

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse