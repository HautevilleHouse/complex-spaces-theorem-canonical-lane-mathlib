import HautevilleHouse.ComplexSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure CauchyTheoryPackage where
  holomorphicOnDomain : Prop
  integralFormula : Prop
  seriesExpansion : Prop
  residueTheorem : Prop

tructure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  holomorphicOnDomainClosed : C.holomorphicOnDomain
  integralFormulaClosed : C.integralFormula
  seriesExpansionClosed : C.seriesExpansion
  residueTheoremClosed : C.residueTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.holomorphicOnDomain ∧ C.integralFormula ∧ C.seriesExpansion ∧ C.residueTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.holomorphicOnDomainClosed (And.intro E.integralFormulaClosed (And.intro E.seriesExpansionClosed E.residueTheoremClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse