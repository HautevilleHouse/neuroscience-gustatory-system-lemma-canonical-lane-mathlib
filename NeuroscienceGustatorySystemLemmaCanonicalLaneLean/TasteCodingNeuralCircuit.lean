import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TasteCodingPackage {R : GustatoryReceptorPackage} where
  neuralCircuit : Type u
  labeledLineCoding : Prop
  combinatorialCoding : Prop
  crossFibreIntegration : Prop
  palatabilitySignal : Prop

structure TasteCodingEvidence {R : GustatoryReceptorPackage}
    (T : TasteCodingPackage R) where
  labeledLineCodingClosed : T.labeledLineCoding
  combinatorialCodingClosed : T.combinatorialCoding
  crossFibreIntegrationClosed : T.crossFibreIntegration
  palatabilitySignalClosed : T.palatabilitySignal

def TasteCodingClosed {R : GustatoryReceptorPackage}
    (T : TasteCodingPackage R) : Prop :=
  T.labeledLineCoding ∧ T.combinatorialCoding ∧
  T.crossFibreIntegration ∧ T.palatabilitySignal

theorem taste_coding_closed_from_evidence
    {R : GustatoryReceptorPackage} (T : TasteCodingPackage R)
    (E : TasteCodingEvidence T) : TasteCodingClosed T := by
  exact And.intro E.labeledLineCodingClosed
    (And.intro E.combinatorialCodingClosed
      (And.intro E.crossFibreIntegrationClosed E.palatabilitySignalClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse