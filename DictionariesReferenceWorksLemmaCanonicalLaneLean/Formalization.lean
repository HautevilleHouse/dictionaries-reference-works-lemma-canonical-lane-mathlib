import canonicalLaneMathlib.AdmissibleClass
import DictionariesReferenceWorksLemmaCanonicalLaneLean.DictionaryStructure
import DictionariesReferenceWorksLemmaCanonicalLaneLean.LemmaClassification
import DictionariesReferenceWorksLemmaCanonicalLaneLean.CrossReference
import DictionariesReferenceWorksLemmaCanonicalLaneLean.EtymologicalTrace

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure FormalizationCertificate where
  lemmaDefinitionsValidated : Bool
  classificationsAssigned : Bool
  crossReferencesVerified : Bool
  etymologicalTracesComplete : Bool
  bridgeClosed : Bool
  gateClosed : Bool

definition FormalizationComplete (fc : FormalizationCertificate) : Prop :=
  fc.lemmaDefinitionsValidated ∧ fc.classificationsAssigned ∧ fc.crossReferencesVerified ∧ fc.etymologicalTracesComplete ∧ fc.bridgeClosed ∧ fc.gateClosed

structure FormalizationEvidence (fc : FormalizationCertificate) where
  definitionsValid : fc.lemmaDefinitionsValidated
  classificationsValid : fc.classificationsAssigned
  crossRefsValid : fc.crossReferencesVerified
  etymologiesValid : fc.etymologicalTracesComplete
  bridgeValid : fc.bridgeClosed
  gateValid : fc.gateClosed

theorem formalization_closed_from_evidence (fc : FormalizationCertificate) (e : FormalizationEvidence fc) : FormalizationComplete fc :=
  And.intro e.definitionsValid
    (And.intro e.classificationsValid
      (And.intro e.crossRefsValid
        (And.intro e.etymologiesValid
          (And.intro e.bridgeValid e.gateValid))))

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse