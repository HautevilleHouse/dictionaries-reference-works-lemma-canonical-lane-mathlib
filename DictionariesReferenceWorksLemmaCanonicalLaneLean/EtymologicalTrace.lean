import canonicalLaneMathlib.AdmissibleClass
import DictionariesReferenceWorksLemmaCanonicalLaneLean.DictionaryStructure

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure EtymologicalSource where
  language : String
  word : String
  timePeriod : String

definition EtymologicalSourceValid (es : EtymologicalSource) : Prop :=
  es.language ≠ "" ∧ es.word ≠ "" ∧ es.timePeriod ≠ ""

structure EtymologicalChain where
  lemma : LemmaIndex
  sources : List EtymologicalSource
  reconstructed : Prop

definition EtymologicalTraceClosed (ec : EtymologicalChain) : Prop :=
  LemmaIndexValid ec.lemma ∧ ec.sources ≠ [] ∧ ec.reconstructed

structure EtymologicalEvidence (ec : EtymologicalChain) where
  lemmaValid : LemmaIndexValid ec.lemma
  sourcesNonempty : ec.sources ≠ []
  reconstructionProof : ec.reconstructed

theorem etymological_trace_closed_from_evidence (ec : EtymologicalChain) (e : EtymologicalEvidence ec) : EtymologicalTraceClosed ec :=
  And.intro e.lemmaValid (And.intro e.sourcesNonempty e.reconstructionProof)

theorem trace_requires_source :
  ∀ (ec : EtymologicalChain), EtymologicalTraceClosed ec → ec.sources ≠ [] :=
by
  intro ec h
  exact h.2.1

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse