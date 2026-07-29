import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure LemmaLookupCorrectnessPackage where
  lemmaIdentification : Prop
  contextMatch : Prop
  conclusionExtracted : Prop
  proofReferenceProvided : Prop

structure LemmaLookupCorrectnessEvidence (L : LemmaLookupCorrectnessPackage) where
  lemmaIdentificationClosed : L.lemmaIdentification
  contextMatchClosed : L.contextMatch
  conclusionExtractedClosed : L.conclusionExtracted
  proofReferenceProvidedClosed : L.proofReferenceProvided

def LemmaLookupCorrectnessClosed (L : LemmaLookupCorrectnessPackage) : Prop :=
  L.lemmaIdentification ∧ L.contextMatch ∧ L.conclusionExtracted ∧ L.proofReferenceProvided

theorem lemma_lookup_correctness_closed_from_evidence (L : LemmaLookupCorrectnessPackage) (E : LemmaLookupCorrectnessEvidence L) : LemmaLookupCorrectnessClosed L := by
  exact And.intro E.lemmaIdentificationClosed (And.intro E.contextMatchClosed (And.intro E.conclusionExtractedClosed E.proofReferenceProvidedClosed))

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse