import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure LemmaProvenance where
  lemmaName : String
  source : String
  authorityLevel : Nat
  authenticated : Prop

structure ProvenanceEvidence (P : LemmaProvenance) where
  authenticatedClosed : P.authenticated

def ProvenanceClosed (P : LemmaProvenance) : Prop :=
  P.authenticated

theorem provenance_closed_from_evidence (P : LemmaProvenance) (E : ProvenanceEvidence P) : ProvenanceClosed P := by
  exact E.authenticatedClosed

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse