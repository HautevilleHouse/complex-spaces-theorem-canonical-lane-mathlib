import ComplexSpacesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse