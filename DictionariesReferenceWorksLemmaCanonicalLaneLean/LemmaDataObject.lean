import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksLemmaCanonicalLaneLean

structure LemmaDataObject where
  lemmaName : String
  statement : Prop
  proofAvailable : Prop
  referenceCount : Nat

structure DictionaryLemmaAdmittedObject where
  object : LemmaDataObject
  conclusion : proofAvailable

end DictionariesReferenceWorksLemmaCanonicalLaneLean
end HautevilleHouse