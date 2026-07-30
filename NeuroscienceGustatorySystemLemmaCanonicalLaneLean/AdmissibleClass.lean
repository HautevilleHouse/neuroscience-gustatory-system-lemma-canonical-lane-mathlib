import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryAdmittedObject where
  tasteReceptorCell : Type
  gustatoryCortex : Type
  tasteTransductionPathway : Prop
  hedonicValueEncoding : Prop
  conclusion : tasteTransductionPathway ∧ hedonicValueEncoding

structure AdmissibleClass where
  object : GustatoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GustatoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse