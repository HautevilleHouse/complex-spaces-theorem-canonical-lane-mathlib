import canonicalLaneMathlib.AdmissibleClass
import ComplexSpacesTheoremCanonicalLaneLean.CauchyTheory
import ComplexSpacesTheoremCanonicalLaneLean.RiemannMapping
import ComplexSpacesTheoremCanonicalLaneLean.AnalyticContinuation
import ComplexSpacesTheoremCanonicalLaneLean.ValueDistribution

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

def ComplexSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem complex_spaces_endgame (A : AdmissibleClass) :
    ComplexSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse