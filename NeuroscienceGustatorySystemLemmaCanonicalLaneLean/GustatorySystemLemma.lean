import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryReceptorEncoding where
  tasteModality : Type
  receptorTypes : Type
  sensitivity : Prop
  temporalResponse : Prop
  dynamicRange : Prop
  encodingEvidence : Prop

structure ReceptorEncodingEvidence (R : GustatoryReceptorEncoding) where
  sensitivityClosed : R.sensitivity
  temporalResponseClosed : R.temporalResponse
  dynamicRangeClosed : R.dynamicRange
  encodingEvidenceClosed : R.encodingEvidence

def ReceptorEncodingClosed (R : GustatoryReceptorEncoding) : Prop :=
  R.sensitivity ∧ R.temporalResponse ∧ R.dynamicRange ∧ R.encodingEvidence

theorem receptor_encoding_closed_from_evidence (R : GustatoryReceptorEncoding)
    (E : ReceptorEncodingEvidence R) : ReceptorEncodingClosed R := by
  exact And.intro E.sensitivityClosed
    (And.intro E.temporalResponseClosed
      (And.intro E.dynamicRangeClosed E.encodingEvidenceClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse