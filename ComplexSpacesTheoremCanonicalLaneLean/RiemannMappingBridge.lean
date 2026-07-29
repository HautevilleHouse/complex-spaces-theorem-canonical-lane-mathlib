import HautevilleHouse.ComplexSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalence : Prop
  unitDiscMapping : Prop
  boundaryBehavior : Prop

tructure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceClosed : R.conformalEquivalence
  unitDiscMappingClosed : R.unitDiscMapping
  boundaryBehaviorClosed : R.boundaryBehavior

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalence ∧ R.unitDiscMapping ∧ R.boundaryBehavior

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed (And.intro E.conformalEquivalenceClosed (And.intro E.unitDiscMappingClosed E.boundaryBehaviorClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse