import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure DictionaryDefinition where
  entryWord : String
  partOfSpeech : String
  definition : String
  examples : List String
  validated : Prop

structure DefinitionEvidence (D : DictionaryDefinition) where
  validatedClosed : D.validated

def DefinitionClosed (D : DictionaryDefinition) : Prop :=
  D.validated

theorem definition_closed_from_evidence (D : DictionaryDefinition) (E : DefinitionEvidence D) : DefinitionClosed D := by
  exact E.validatedClosed

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse