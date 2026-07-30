import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure CentralGustatoryProcessing where
  nucleusTractusSolitarius : Type u
  parabrachialNucleus : Type v
  thalamus : Type w
  insularCortex : Type x
  brainstemRelayCoding : Prop
  thalamocorticalProjection : Prop
  gustatoryCortexMap : Prop
  crossModalIntegration : Prop
  palatabilityRepresentation : Prop

structure CentralGustatoryProcessingEvidence (C : CentralGustatoryProcessing) where
  brainstemRelayCodingClosed : C.brainstemRelayCoding
  thalamocorticalProjectionClosed : C.thalamocorticalProjection
  gustatoryCortexMapClosed : C.gustatoryCortexMap
  crossModalIntegrationClosed : C.crossModalIntegration
  palatabilityRepresentationClosed : C.palatabilityRepresentation

def CentralGustatoryProcessingClosed (C : CentralGustatoryProcessing) : Prop :=
  C.brainstemRelayCoding ∧ C.thalamocorticalProjection ∧ C.gustatoryCortexMap ∧
  C.crossModalIntegration ∧ C.palatabilityRepresentation

theorem central_gustatory_processing_closed_from_evidence
    (C : CentralGustatoryProcessing) (E : CentralGustatoryProcessingEvidence C) :
    CentralGustatoryProcessingClosed C := by
  exact And.intro E.brainstemRelayCodingClosed
    (And.intro E.thalamocorticalProjectionClosed
      (And.intro E.gustatoryCortexMapClosed
        (And.intro E.crossModalIntegrationClosed E.palatabilityRepresentationClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse