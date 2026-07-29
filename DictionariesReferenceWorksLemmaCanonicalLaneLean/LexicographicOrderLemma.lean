import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure LexicographicOrderLemmaPackage where
  dictionaryTotalOrder : Prop
  firstDifferenceDecides : Prop
  orderPreservedUnderConcatenation : Prop
  baseOrderDecidable : Prop

structure LexicographicOrderLemmaEvidence (L : LexicographicOrderLemmaPackage) where
  dictionaryTotalOrderClosed : L.dictionaryTotalOrder
  firstDifferenceDecidesClosed : L.firstDifferenceDecides
  orderPreservedUnderConcatenationClosed : L.orderPreservedUnderConcatenation
  baseOrderDecidableClosed : L.baseOrderDecidable

def LexicographicOrderLemmaClosed (L : LexicographicOrderLemmaPackage) : Prop :=
  L.dictionaryTotalOrder ∧ L.firstDifferenceDecides ∧ L.orderPreservedUnderConcatenation ∧ L.baseOrderDecidable

theorem lexicographic_order_lemma_closed_from_evidence (L : LexicographicOrderLemmaPackage) (E : LexicographicOrderLemmaEvidence L) : LexicographicOrderLemmaClosed L := by
  exact And.intro E.dictionaryTotalOrderClosed (And.intro E.firstDifferenceDecidesClosed (And.intro E.orderPreservedUnderConcatenationClosed E.baseOrderDecidableClosed))

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse