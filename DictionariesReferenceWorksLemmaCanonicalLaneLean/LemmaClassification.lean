import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

inductive LemmaType where
  | mathematical
  | linguistic
  | scientific
  | legal
  | technical
  | general

structure ClassifiedLemma where
  index : LemmaIndex
  lemmaType : LemmaType
  fieldDisambiguations : List String
  usageRestrictions : Option (List String)

definition LemmaClassified (c : ClassifiedLemma) : Prop :=
  LemmaIndexValid c.index ∧ c.lemmaType ≠ LemmaType.general

structure LemmaClassificationEvidence (c : ClassifiedLemma) where
  indexValid : LemmaIndexValid c.index
  typeSpecific : c.lemmaType ≠ LemmaType.general

theorem classification_closed_from_evidence (c : ClassifiedLemma) (e : LemmaClassificationEvidence c) : LemmaClassified c :=
  And.intro e.indexValid e.typeSpecific

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse