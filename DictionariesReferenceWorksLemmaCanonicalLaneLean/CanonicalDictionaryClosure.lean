import canonicalLaneMathlib.AdmissibleClass
import DictionariesReferenceWorksLemmaCanonicalLaneLean.BridgeLemmas
import DictionariesReferenceWorksLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

def ConstrainedDictionaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dictionary_endgame (A : AdmissibleClass) : ConstrainedDictionaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse