import canonicalLaneMathlib.AdmissibleClass
import DictionariesReferenceWorksLemmaCanonicalLaneLean.BridgeLemmas
import DictionariesReferenceWorksLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

def ConstrainedDictionariesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dictionaries_endgame (A : AdmissibleClass) : ConstrainedDictionariesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse