import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure ReferenceResolutionLemmaPackage where
  crossReferenceGraph : Prop
  referenceChainAcyclic : Prop
  targetDefinitionFound : Prop
  resolutionDeterministic : Prop

structure ReferenceResolutionLemmaEvidence (R : ReferenceResolutionLemmaPackage) where
  crossReferenceGraphClosed : R.crossReferenceGraph
  referenceChainAcyclicClosed : R.referenceChainAcyclic
  targetDefinitionFoundClosed : R.targetDefinitionFound
  resolutionDeterministicClosed : R.resolutionDeterministic

def ReferenceResolutionLemmaClosed (R : ReferenceResolutionLemmaPackage) : Prop :=
  R.crossReferenceGraph ∧ R.referenceChainAcyclic ∧ R.targetDefinitionFound ∧ R.resolutionDeterministic

theorem reference_resolution_lemma_closed_from_evidence (R : ReferenceResolutionLemmaPackage) (E : ReferenceResolutionLemmaEvidence R) : ReferenceResolutionLemmaClosed R := by
  exact And.intro E.crossReferenceGraphClosed (And.intro E.referenceChainAcyclicClosed (And.intro E.targetDefinitionFoundClosed E.resolutionDeterministicClosed))

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse