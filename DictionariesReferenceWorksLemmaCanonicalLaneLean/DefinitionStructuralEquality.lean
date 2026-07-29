import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure DefinitionStructuralEqualityPackage where
  deeplinkedTerm : Type u
  definitionalTreeEquality : Prop
  substitutionInvariant : Prop
  decidableEquality : Prop

structure DefinitionStructuralEqualityEvidence (D : DefinitionStructuralEqualityPackage) where
  definitionalTreeEqualityClosed : D.definitionalTreeEquality
  substitutionInvariantClosed : D.substitutionInvariant
  decidableEqualityClosed : D.decidableEquality

def DefinitionStructuralEqualityClosed (D : DefinitionStructuralEqualityPackage) : Prop :=
  D.definitionalTreeEquality ∧ D.substitutionInvariant ∧ D.decidableEquality

theorem definition_structural_equality_closed_from_evidence (D : DefinitionStructuralEqualityPackage) (E : DefinitionStructuralEqualityEvidence D) : DefinitionStructuralEqualityClosed D := by
  exact And.intro E.definitionalTreeEqualityClosed (And.intro E.substitutionInvariantClosed E.decidableEqualityClosed)

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse