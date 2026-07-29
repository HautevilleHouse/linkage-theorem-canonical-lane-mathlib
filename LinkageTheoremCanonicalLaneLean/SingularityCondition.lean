import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure SingularityConditionPackage where
  jacobianRankDeficient : Prop
  singularityType : String
  rankDeficientTerm : jacobianRankDeficient

def SingularityConditionClosed (S : SingularityConditionPackage) : Prop :=
  S.jacobianRankDeficient

theorem singularity_condition_closed (S : SingularityConditionPackage) : SingularityConditionClosed S := by
  exact S.rankDeficientTerm

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse