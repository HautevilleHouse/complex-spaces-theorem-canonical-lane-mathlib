import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness.elim (fun h => h) (fun h => False.elim h)

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse