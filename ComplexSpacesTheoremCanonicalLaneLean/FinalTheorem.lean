import canonicalLaneMathlib.AdmissibleClass
import ComplexSpacesTheoremCanonicalLaneLean.ComplexAnalysisBridge

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

def ConstrainedComplexSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complex_spaces_endgame (A : AdmissibleClass) : ConstrainedComplexSpacesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse