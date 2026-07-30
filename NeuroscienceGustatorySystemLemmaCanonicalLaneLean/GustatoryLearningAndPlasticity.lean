import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryLearningPackage {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} {C : CentralGustatoryPathwaysPackage R T} where
  hebbianPlasticity : Prop
  conditionedTasteAversion : Prop
  corticalMapReorganization : Prop
  palatabilityShift : Prop
  hedonicUpdate : Prop

structure GustatoryLearningEvidence {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} {C : CentralGustatoryPathwaysPackage R T}
    (L : GustatoryLearningPackage R T C) where
  hebbianPlasticityClosed : L.hebbianPlasticity
  conditionedTasteAversionClosed : L.conditionedTasteAversion
  corticalMapReorganizationClosed : L.corticalMapReorganization
  palatabilityShiftClosed : L.palatabilityShift
  hedonicUpdateClosed : L.hedonicUpdate

def GustatoryLearningClosed {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} {C : CentralGustatoryPathwaysPackage R T}
    (L : GustatoryLearningPackage R T C) : Prop :=
  L.hebbianPlasticity ∧ L.conditionedTasteAversion ∧
  L.corticalMapReorganization ∧ L.palatabilityShift ∧
  L.hedonicUpdate

theorem gustatory_learning_closed_from_evidence
    {R : GustatoryReceptorPackage} {T : TasteCodingPackage R}
    {C : CentralGustatoryPathwaysPackage R T}
    (L : GustatoryLearningPackage R T C)
    (E : GustatoryLearningEvidence L) :
    GustatoryLearningClosed L := by
  exact And.intro E.hebbianPlasticityClosed
    (And.intro E.conditionedTasteAversionClosed
      (And.intro E.corticalMapReorganizationClosed
        (And.intro E.palatabilityShiftClosed E.hedonicUpdateClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse