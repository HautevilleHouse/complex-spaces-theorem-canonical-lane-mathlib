import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunctionGrowth : Prop
  picardTheorem : Prop
  nevanlinnaTheory : Prop
  deficiencyRelation : Prop
  meromorphicFunctionClassification : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  entireFunctionGrowthClosed : V.entireFunctionGrowth
  picardTheoremClosed : V.picardTheorem
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  deficiencyRelationClosed : V.deficiencyRelation
  meromorphicFunctionClassificationClosed : V.meromorphicFunctionClassification

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.entireFunctionGrowth ∧ V.picardTheorem ∧ V.nevanlinnaTheory ∧ V.deficiencyRelation ∧ V.meromorphicFunctionClassification

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V :=
  And.intro E.entireFunctionGrowthClosed (And.intro E.picardTheoremClosed (And.intro E.nevanlinnaTheoryClosed (And.intro E.deficiencyRelationClosed E.meromorphicFunctionClassificationClosed)))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse