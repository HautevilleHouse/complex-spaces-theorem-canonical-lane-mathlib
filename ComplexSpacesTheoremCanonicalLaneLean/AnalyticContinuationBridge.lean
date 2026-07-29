import HautevilleHouse.ComplexSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure AnalyticContinuationPackage where
  initialGerm : Prop
  continuationPath : Prop
  monodromyProperty : Prop
  uniquenessOfContinuation : Prop

tructure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  initialGermClosed : A.initialGerm
  continuationPathClosed : A.continuationPath
  monodromyPropertyClosed : A.monodromyProperty
  uniquenessOfContinuationClosed : A.uniquenessOfContinuation

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.initialGerm ∧ A.continuationPath ∧ A.monodromyProperty ∧ A.uniquenessOfContinuation

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.initialGermClosed (And.intro E.continuationPathClosed (And.intro E.monodromyPropertyClosed E.uniquenessOfContinuationClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse