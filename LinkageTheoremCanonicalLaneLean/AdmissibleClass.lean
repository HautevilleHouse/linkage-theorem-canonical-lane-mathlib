import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LinkageAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinkageWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
