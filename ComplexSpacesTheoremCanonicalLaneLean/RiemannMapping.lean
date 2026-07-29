import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalence : Prop
  biholomorphicMapToDisc : Prop
  uniquenessUpToAutomorphism : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceClosed : R.conformalEquivalence
  biholomorphicMapToDiscClosed : R.biholomorphicMapToDisc
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalence ∧ R.biholomorphicMapToDisc ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R :=
  And.intro E.simplyConnectedDomainClosed (And.intro E.conformalEquivalenceClosed (And.intro E.biholomorphicMapToDiscClosed E.uniquenessUpToAutomorphismClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse