import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TasteCodingPeriphery where
  tasteBud : Type u
  gustatoryAfferentFiber : Type v
  tasteModality : Type w
  labeledLineCoding : Prop
  combinatorialCoding : Prop
  concentrationResponseCurve : Prop
  acrossFiberPattern : Prop
  temporalCoding : Prop

structure TasteCodingPeripheryEvidence (T : TasteCodingPeriphery) where
  labeledLineCodingClosed : T.labeledLineCoding
  combinatorialCodingClosed : T.combinatorialCoding
  concentrationResponseCurveClosed : T.concentrationResponseCurve
  acrossFiberPatternClosed : T.acrossFiberPattern
  temporalCodingClosed : T.temporalCoding

def TasteCodingPeripheryClosed (T : TasteCodingPeriphery) : Prop :=
  T.labeledLineCoding ∧ T.combinatorialCoding ∧ T.concentrationResponseCurve ∧
  T.acrossFiberPattern ∧ T.temporalCoding

theorem taste_coding_periphery_closed_from_evidence
    (T : TasteCodingPeriphery) (E : TasteCodingPeripheryEvidence T) :
    TasteCodingPeripheryClosed T := by
  exact And.intro E.labeledLineCodingClosed
    (And.intro E.combinatorialCodingClosed
      (And.intro E.concentrationResponseCurveClosed
        (And.intro E.acrossFiberPatternClosed E.temporalCodingClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse