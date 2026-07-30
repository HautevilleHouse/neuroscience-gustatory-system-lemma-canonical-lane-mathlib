import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TastePerceptFormation where
  multimodalIntegration : Type u
  tasteMemory : Type v
  perceptualBinding : Prop
  flavorGestaltConstruction : Prop
  consciousTasteAwareness : Prop

structure TastePerceptFormationEvidence (P : TastePerceptFormation) where
  perceptualBindingClosed : P.perceptualBinding
  flavorGestaltConstructionClosed : P.flavorGestaltConstruction
  consciousTasteAwarenessClosed : P.consciousTasteAwareness

def TastePerceptFormationClosed (P : TastePerceptFormation) : Prop :=
  P.perceptualBinding ∧ P.flavorGestaltConstruction ∧ P.consciousTasteAwareness

theorem taste_percept_formation_closed_from_evidence
    (P : TastePerceptFormation) (E : TastePerceptFormationEvidence P) :
    TastePerceptFormationClosed P := by
  exact And.intro E.perceptualBindingClosed
    (And.intro E.flavorGestaltConstructionClosed E.consciousTasteAwarenessClosed)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse