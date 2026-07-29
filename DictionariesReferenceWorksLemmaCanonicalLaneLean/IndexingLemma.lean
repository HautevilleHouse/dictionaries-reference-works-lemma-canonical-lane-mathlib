import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure IndexingLemmaPackage where
  indexSetEnumeration : Prop
  indexKeyUniqueness : Prop
  indexSortedRetrieval : Prop
  indexSupportsLookup : Prop

structure IndexingLemmaEvidence (I : IndexingLemmaPackage) where
  indexSetEnumerationClosed : I.indexSetEnumeration
  indexKeyUniquenessClosed : I.indexKeyUniqueness
  indexSortedRetrievalClosed : I.indexSortedRetrieval
  indexSupportsLookupClosed : I.indexSupportsLookup

def IndexingLemmaClosed (I : IndexingLemmaPackage) : Prop :=
  I.indexSetEnumeration ∧ I.indexKeyUniqueness ∧ I.indexSortedRetrieval ∧ I.indexSupportsLookup

theorem indexing_lemma_closed_from_evidence (I : IndexingLemmaPackage) (E : IndexingLemmaEvidence I) : IndexingLemmaClosed I := by
  exact And.intro E.indexSetEnumerationClosed (And.intro E.indexKeyUniquenessClosed (And.intro E.indexSortedRetrievalClosed E.indexSupportsLookupClosed))

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse