import ComplexSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse