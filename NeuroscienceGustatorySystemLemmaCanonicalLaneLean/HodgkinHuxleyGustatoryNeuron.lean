import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure HodgkinHuxleyGustatoryPackage where
  membranePotential : Type u
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  sodiumGateDynamics : Prop
  potassiumGateDynamics : Prop
  actionPotentialGeneration : Prop
  synapticTransmission : Prop

structure HodgkinHuxleyGustatoryEvidence (H : HodgkinHuxleyGustatoryPackage) where
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  sodiumGateDynamicsClosed : H.sodiumGateDynamics
  potassiumGateDynamicsClosed : H.potassiumGateDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  synapticTransmissionClosed : H.synapticTransmission

def HodgkinHuxleyGustatoryClosed (H : HodgkinHuxleyGustatoryPackage) : Prop :=
  H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧
  H.sodiumGateDynamics ∧ H.potassiumGateDynamics ∧
  H.actionPotentialGeneration ∧ H.synapticTransmission

theorem hodgkin_huxley_gustatory_closed_from_evidence
    (H : HodgkinHuxleyGustatoryPackage)
    (E : HodgkinHuxleyGustatoryEvidence H) :
    HodgkinHuxleyGustatoryClosed H := by
  exact And.intro E.sodiumChannelClosed
    (And.intro E.potassiumChannelClosed
      (And.intro E.leakChannelClosed
        (And.intro E.sodiumGateDynamicsClosed
          (And.intro E.potassiumGateDynamicsClosed
            (And.intro E.actionPotentialGenerationClosed
              E.synapticTransmissionClosed)))))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse