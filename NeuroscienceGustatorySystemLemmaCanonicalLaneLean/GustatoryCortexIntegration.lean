import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryCortexIntegrationPackage where
  corticalRegion : Type u
  thalamicInput : Type v
  tasteQualityDiscrimination : Prop
  hebbianPlasticityRule : Prop
  recurrentConnectivityStrength : ℝ
  inhibitoryExcitatoryBalance : ℝ

structure GustatoryCortexIntegrationEvidence (G : GustatoryCortexIntegrationPackage) where
  tasteQualityDiscriminationClosed : G.tasteQualityDiscrimination
  hebbianPlasticityRuleClosed : G.hebbianPlasticityRule
  recurrentConnectivityStrengthClosed : G.recurrentConnectivityStrength > 0
  inhibitoryExcitatoryBalanceClosed : G.inhibitoryExcitatoryBalance > 0

def GustatoryCortexIntegrationClosed (G : GustatoryCortexIntegrationPackage) : Prop :=
  G.tasteQualityDiscrimination ∧ G.hebbianPlasticityRule ∧
  G.recurrentConnectivityStrength > 0 ∧ G.inhibitoryExcitatoryBalance > 0

theorem gustatory_cortex_integration_closed_from_evidence
    (G : GustatoryCortexIntegrationPackage) (E : GustatoryCortexIntegrationEvidence G) :
    GustatoryCortexIntegrationClosed G := by
  exact And.intro E.tasteQualityDiscriminationClosed
    (And.intro E.hebbianPlasticityRuleClosed
      (And.intro E.recurrentConnectivityStrengthClosed E.inhibitoryExcitatoryBalanceClosed))

end HautevilleHouse
end NeuroscienceGustatorySystemLemmaCanonicalLaneLean