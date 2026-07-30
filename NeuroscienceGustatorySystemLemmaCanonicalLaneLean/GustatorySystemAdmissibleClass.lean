import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryAdmittedObject where
  gustatorySystem : Type u
  tasteModalitiesClassified : Prop
  neuralCorrelateIdentified : Prop
  conclusion : tasteModalitiesClassified ∧ neuralCorrelateIdentified

structure GustatoryAdmissibleClass where
  object : GustatoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def gustatoryAdmittedClosure (A : GustatoryAdmissibleClass) : Prop :=
  (A.object.tasteModalitiesClassified ∧ A.object.neuralCorrelateIdentified) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse