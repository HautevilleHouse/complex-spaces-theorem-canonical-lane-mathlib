import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  entireFunctionDefined : Prop
  picardTheorem : Prop
  nevanlinnaTheory : Prop
  deficiencyRelation : Prop
  juliaExceptionalSet : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  entireFunctionDefinedClosed : V.entireFunctionDefined
  picardTheoremClosed : V.picardTheorem
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  deficiencyRelationClosed : V.deficiencyRelation
  juliaExceptionalSetClosed : V.juliaExceptionalSet

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.entireFunctionDefined ∧ V.picardTheorem ∧
  V.nevanlinnaTheory ∧ V.deficiencyRelation ∧ V.juliaExceptionalSet

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) : ValueDistributionClosed V :=
  And.intro E.entireFunctionDefinedClosed
    (And.intro E.picardTheoremClosed
      (And.intro E.nevanlinnaTheoryClosed
        (And.intro E.deficiencyRelationClosed E.juliaExceptionalSetClosed)))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse