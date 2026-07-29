import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure DictionaryDefinition where
  headword : String
  partOfSpeech : String
  definitions : List String
  etymology : Option String
  usageExamples : Option (List String)

definition DictionaryValid (d : DictionaryDefinition) : Prop :=
  d.headword ≠ "" ∧ d.definitions ≠ []

structure LemmaIndex where
  formalName : String
  canonicalId : Nat
  synonyms : List String
  regionVariants : List String

definition LemmaIndexValid (l : LemmaIndex) : Prop :=
  l.formalName ≠ "" ∧ l.canonicalId ≥ 1

structure ReferenceWork where
  title : String
  publisher : String
  isbn : String
  yearOfPublication : Nat
  editors : List String

definition ReferenceWorkValid (r : ReferenceWork) : Prop :=
  r.title ≠ "" ∧ r.isbn.length > 0

theorem empty_headword_invalid :
  ¬ DictionaryValid { headword := "", partOfSpeech := "noun", definitions := ["test"], etymology := none, usageExamples := none } :=
by
  unfold DictionaryValid
  simp

theorem empty_definitions_invalid :
  ¬ DictionaryValid { headword := "test", partOfSpeech := "noun", definitions := [], etymology := none, usageExamples := none } :=
by
  unfold DictionaryValid
  simp

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse