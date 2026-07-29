import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure SeveralComplexVariablesPackage where
  hartogsPhenomenon : Prop
  domainsOfHolomorphy : Prop
  pseudoconvexity : Prop
  leviProblem : Prop
  coherentSheaves : Prop
  complexManifolds : Prop

structure SeveralComplexVariablesEvidence (S : SeveralComplexVariablesPackage) where
  hartogsPhenomenonClosed : S.hartogsPhenomenon
  domainsOfHolomorphyClosed : S.domainsOfHolomorphy
  pseudoconvexityClosed : S.pseudoconvexity
  leviProblemClosed : S.leviProblem
  coherentSheavesClosed : S.coherentSheaves
  complexManifoldsClosed : S.complexManifolds

def SeveralComplexVariablesClosed (S : SeveralComplexVariablesPackage) : Prop :=
  S.hartogsPhenomenon ∧ S.domainsOfHolomorphy ∧ S.pseudoconvexity ∧
  S.leviProblem ∧ S.coherentSheaves ∧ S.complexManifolds

theorem several_complex_variables_closed_from_evidence
    (S : SeveralComplexVariablesPackage)
    (E : SeveralComplexVariablesEvidence S) : SeveralComplexVariablesClosed S := by
  exact And.intro E.hartogsPhenomenonClosed
    (And.intro E.domainsOfHolomorphyClosed
      (And.intro E.pseudoconvexityClosed
        (And.intro E.leviProblemClosed
          (And.intro E.coherentSheavesClosed E.complexManifoldsClosed))))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse