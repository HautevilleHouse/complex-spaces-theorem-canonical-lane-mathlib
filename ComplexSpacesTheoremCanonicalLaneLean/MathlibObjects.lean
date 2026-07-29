import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop

tructure ComplexAnalyticObject where
  space : ComplexSpace
  holomorphic : Prop
  boundaryObject : Type
  analyticContinuationClosed : Prop
  conclusion : analyticContinuationClosed

structure ComplexEndgameState where
  object : ComplexAnalyticObject

def ComplexWitnessClosed (O : ComplexAnalyticObject) : Prop :=
  O.analyticContinuationClosed

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse