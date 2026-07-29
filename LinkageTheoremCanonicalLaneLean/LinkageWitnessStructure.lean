import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageTheoremCanonicalLaneLean.LinkageConfigurationSpace

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure LinkageAdmittedObject where
  space : LinkageConfigSpace
  goalConfiguration : AdmissibleClass
  reachable : Prop
  witnessConstructed : Prop
  conclusion : witnessConstructed

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.witnessConstructed

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
