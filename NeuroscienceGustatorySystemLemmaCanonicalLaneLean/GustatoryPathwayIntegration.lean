import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryPathwayIntegration where
  tasteToHypothalamus : Type u
  tasteToLimbicSystem : Type v
  tasteToMotorOutput : Type w
  feedingBehaviorControl : Prop
  hedonicEvaluation : Prop
  energyHomeostasis : Prop
  tasteNutrientCoupling : Prop
  satietySignalIntegration : Prop

structure GustatoryPathwayIntegrationEvidence (P : GustatoryPathwayIntegration) where
  feedingBehaviorControlClosed : P.feedingBehaviorControl
  hedonicEvaluationClosed : P.hedonicEvaluation
  energyHomeostasisClosed : P.energyHomeostasis
  tasteNutrientCouplingClosed : P.tasteNutrientCoupling
  satietySignalIntegrationClosed : P.satietySignalIntegration

def GustatoryPathwayIntegrationClosed (P : GustatoryPathwayIntegration) : Prop :=
  P.feedingBehaviorControl ∧ P.hedonicEvaluation ∧ P.energyHomeostasis ∧
  P.tasteNutrientCoupling ∧ P.satietySignalIntegration

theorem gustatory_pathway_integration_closed_from_evidence
    (P : GustatoryPathwayIntegration) (E : GustatoryPathwayIntegrationEvidence P) :
    GustatoryPathwayIntegrationClosed P := by
  exact And.intro E.feedingBehaviorControlClosed
    (And.intro E.hedonicEvaluationClosed
      (And.intro E.energyHomeostasisClosed
        (And.intro E.tasteNutrientCouplingClosed E.satietySignalIntegrationClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse