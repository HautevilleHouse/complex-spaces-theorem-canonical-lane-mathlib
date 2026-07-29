import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  holomorphicBiholomorphismExists : Prop
  uniformizationTheorem : Prop
  conformalMapping : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  holomorphicBiholomorphismExistsClosed : R.holomorphicBiholomorphismExists
  uniformizationTheoremClosed : R.uniformizationTheorem
  conformalMappingClosed : R.conformalMapping

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.holomorphicBiholomorphismExists ∧
  R.uniformizationTheorem ∧ R.conformalMapping

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R :=
  And.intro E.simplyConnectedDomainClosed
    (And.intro E.holomorphicBiholomorphismExistsClosed
      (And.intro E.uniformizationTheoremClosed E.conformalMappingClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse