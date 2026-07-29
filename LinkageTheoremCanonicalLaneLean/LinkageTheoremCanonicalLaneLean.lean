-- This module is the root of the LinkageTheoremCanonicalLaneLean Lean proof package.

import HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

-- Core definitions

structure LinkageObject where
  carrier : Type
  topology : TopologicalSpace carrier

definition LinkageWitnessClosed (O : LinkageObject) : Prop := True

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
