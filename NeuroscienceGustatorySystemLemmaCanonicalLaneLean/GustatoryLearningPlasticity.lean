import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryLearningPlasticity where
  conditionedTasteAversion : Type u
  tasteMemoryConsolidation : Type v
  hebbianSynapticModification : Type w
  nmdaReceptorDependence : Prop
  mapkErkSignaling : Prop
  corticoamygdalaPlasticity : Prop
  tastePalatabilityShift : Prop
  extinctionRecall : Prop

structure GustatoryLearningPlasticityEvidence (L : GustatoryLearningPlasticity) where
  nmdaReceptorDependenceClosed : L.nmdaReceptorDependence
  mapkErkSignalingClosed : L.mapkErkSignaling
  corticoamygdalaPlasticityClosed : L.corticoamygdalaPlasticity
  tastePalatabilityShiftClosed : L.tastePalatabilityShift
  extinctionRecallClosed : L.extinctionRecall

def GustatoryLearningPlasticityClosed (L : GustatoryLearningPlasticity) : Prop :=
  L.nmdaReceptorDependence ∧ L.mapkErkSignaling ∧ L.corticoamygdalaPlasticity ∧
  L.tastePalatabilityShift ∧ L.extinctionRecall

theorem gustatory_learning_plasticity_closed_from_evidence
    (L : GustatoryLearningPlasticity) (E : GustatoryLearningPlasticityEvidence L) :
    GustatoryLearningPlasticityClosed L := by
  exact And.intro E.nmdaReceptorDependenceClosed
    (And.intro E.mapkErkSignalingClosed
      (And.intro E.corticoamygdalaPlasticityClosed
        (And.intro E.tastePalatabilityShiftClosed E.extinctionRecallClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse