import HautevilleHouse.ComplexSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunctionGrowth : Prop
  picardTheorem : Prop
  defectRelation : Prop
  valeurDistribution : Prop

tructure ValueDistributionEvidence (V : ValueDistributionPackage) where
  entireFunctionGrowthClosed : V.entireFunctionGrowth
  picardTheoremClosed : V.picardTheorem
  defectRelationClosed : V.defectRelation
  valeurDistributionClosed : V.valeurDistribution

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.entireFunctionGrowth ∧ V.picardTheorem ∧ V.defectRelation ∧ V.valeurDistribution

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.entireFunctionGrowthClosed (And.intro E.picardTheoremClosed (And.intro E.defectRelationClosed E.valeurDistributionClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse