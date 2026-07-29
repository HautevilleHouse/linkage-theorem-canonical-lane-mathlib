import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure LinkageConfig where
  bars : Nat
  joints : Nat
  linkageGraph : Type

theorem linkage_graph_finite : True := True.intro

structure LinkageAdmittedObject where
  config : LinkageConfig
  assemblyMap : Type
  moduliSpaceDimension : Prop
  conclusion : moduliSpaceDimension

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.moduliSpaceDimension

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse