import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure CrossReferenceStructure where
  sourceLemma : String
  targetLemma : String
  relationType : String
  bidirectional : Prop

structure CrossReferenceEvidence (C : CrossReferenceStructure) where
  bidirectionalClosed : C.bidirectional

def CrossReferenceClosed (C : CrossReferenceStructure) : Prop :=
  C.bidirectional

theorem cross_reference_closed_from_evidence (C : CrossReferenceStructure) (E : CrossReferenceEvidence C) : CrossReferenceClosed C := by
  exact E.bidirectionalClosed

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse