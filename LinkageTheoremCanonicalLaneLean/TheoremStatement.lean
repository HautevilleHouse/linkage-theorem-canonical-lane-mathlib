import LinkageTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def sourceRepository : String := "linkage-theorem-canonical-lane"
def sourceDescription : String := "Linkage Theorem: Every simply connected closed 3-manifold is homeomorphic to the 3-sphere"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository
  theoremName := sourceRepository
  theoremObject := sourceDescription
  classicalBoundary := "classical source boundary"
  carriedRemainder := "classical source boundary carried"
}

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse
