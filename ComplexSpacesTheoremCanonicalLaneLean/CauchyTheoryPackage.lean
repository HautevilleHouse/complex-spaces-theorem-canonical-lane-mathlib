import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure CauchyTheoryPackage where
  holomorphicFunctionDefined : Prop
  cauchyIntegralFormula : Prop
  analyticContinuation : Prop
  residueTheorem : Prop
  argumentPrinciple : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  holomorphicFunctionDefinedClosed : C.holomorphicFunctionDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticContinuationClosed : C.analyticContinuation
  residueTheoremClosed : C.residueTheorem
  argumentPrincipleClosed : C.argumentPrinciple

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.holomorphicFunctionDefined ∧ C.cauchyIntegralFormula ∧
  C.analyticContinuation ∧ C.residueTheorem ∧ C.argumentPrinciple

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C :=
  And.intro E.holomorphicFunctionDefinedClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.analyticContinuationClosed
        (And.intro E.residueTheoremClosed E.argumentPrincipleClosed)))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse