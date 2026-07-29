import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageTheoremCanonicalLaneLean

structure DofFormulaPackage where
  numLinks : Nat
  numJoints : Nat
  dof : Nat
  gruberEquation : Nat -> Nat -> Nat

structure DofFormulaEvidence (D : DofFormulaPackage) where
  gruberEquationCorrect : D.gruberEquation D.numLinks D.numJoints = D.dof
  dofNonnegative : D.dof ≥ 0

def DofFormulaClosed (D : DofFormulaPackage) : Prop :=
  D.gruberEquation D.numLinks D.numJoints = D.dof ∧ D.dof ≥ 0

theorem dof_formula_closed_from_evidence (D : DofFormulaPackage) (E : DofFormulaEvidence D) :
  DofFormulaClosed D := by
  exact And.intro E.gruberEquationCorrect E.dofNonnegative

end LinkageTheoremCanonicalLaneLean
end HautevilleHouse