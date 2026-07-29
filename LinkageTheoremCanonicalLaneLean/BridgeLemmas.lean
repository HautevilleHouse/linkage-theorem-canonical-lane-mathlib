import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageTheoremCanonicalLaneLean.LinkageWitnessStructure

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinkageWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
