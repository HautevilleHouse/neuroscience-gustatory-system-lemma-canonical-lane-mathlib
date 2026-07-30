import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TasteCorticalProcessing where
  gustatoryCortex : Type u
  thalamicRelay : Type v
  corticalTopography : Prop
  tasteQualityDiscrimination : Prop
  hedonicValenceEncoding : Prop

structure TasteCorticalProcessingEvidence (C : TasteCorticalProcessing) where
  corticalTopographyClosed : C.corticalTopography
  tasteQualityDiscriminationClosed : C.tasteQualityDiscrimination
  hedonicValenceEncodingClosed : C.hedonicValenceEncoding

def TasteCorticalProcessingClosed (C : TasteCorticalProcessing) : Prop :=
  C.corticalTopography ∧ C.tasteQualityDiscrimination ∧ C.hedonicValenceEncoding

theorem taste_cortical_processing_closed_from_evidence
    (C : TasteCorticalProcessing) (E : TasteCorticalProcessingEvidence C) :
    TasteCorticalProcessingClosed C := by
  exact And.intro E.corticalTopographyClosed
    (And.intro E.tasteQualityDiscriminationClosed E.hedonicValenceEncodingClosed)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse