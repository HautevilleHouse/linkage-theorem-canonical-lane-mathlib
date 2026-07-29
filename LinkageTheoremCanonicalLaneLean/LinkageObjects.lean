import LinkageTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LinkageSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinkageAdmittedObject where
  space : LinkageSpace
  linkageTheorem : Prop
  closureCondition : Prop
  conclusion : closureCondition

structure LinkageEndgameState where
  object : LinkageAdmittedObject

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.closureCondition

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
