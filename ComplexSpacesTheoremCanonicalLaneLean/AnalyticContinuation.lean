import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure AnalyticContinuationPackage where
  directAnalyticContinuation : Prop
  monodromyTheorem : Prop
  monodromyGroup : Type u
  coveringSpaceConstruction : Prop
  classificationOfCoverings : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  directAnalyticContinuationClosed : A.directAnalyticContinuation
  monodromyTheoremClosed : A.monodromyTheorem
  coveringSpaceConstructionClosed : A.coveringSpaceConstruction
  classificationOfCoveringsClosed : A.classificationOfCoverings

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.directAnalyticContinuation ∧ A.monodromyTheorem ∧ A.coveringSpaceConstruction ∧ A.classificationOfCoverings

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A :=
  And.intro E.directAnalyticContinuationClosed (And.intro E.monodromyTheoremClosed (And.intro E.coveringSpaceConstructionClosed E.classificationOfCoveringsClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse