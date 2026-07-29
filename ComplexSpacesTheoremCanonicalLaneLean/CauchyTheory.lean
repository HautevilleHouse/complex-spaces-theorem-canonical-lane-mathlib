import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure CauchyTheoryPackage where
  complexDifferentiability : Prop
  cauchyRiemannEquations : Prop
  cauchyIntegralFormula : Prop
  analyticContinuationUnique : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  complexDifferentiabilityClosed : C.complexDifferentiability
  cauchyRiemannEquationsClosed : C.cauchyRiemannEquations
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticContinuationUniqueClosed : C.analyticContinuationUnique

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.complexDifferentiability ∧ C.cauchyRiemannEquations ∧ C.cauchyIntegralFormula ∧ C.analyticContinuationUnique

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C :=
  And.intro E.complexDifferentiabilityClosed (And.intro E.cauchyRiemannEquationsClosed (And.intro E.cauchyIntegralFormulaClosed E.analyticContinuationUniqueClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse