import canonicalLaneMathlib.AdmissibleClass
import DictionariesReferenceWorksLemmaCanonicalLaneLean.LemmaDataObject

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj : LemmaDataObject := A.object
  obj.proofAvailable

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse