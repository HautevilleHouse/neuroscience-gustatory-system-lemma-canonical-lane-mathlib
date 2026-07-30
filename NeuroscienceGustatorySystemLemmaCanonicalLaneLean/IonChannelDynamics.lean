import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure IonChannelDynamicsPackage where
  voltageGatedSodium : Prop
  voltageGatedPotassium : Prop
  calciumInflux : Prop
  channelActivationKinetics : Prop

structure IonChannelDynamicsEvidence (I : IonChannelDynamicsPackage) where
  voltageGatedSodiumClosed : I.voltageGatedSodium
  voltageGatedPotassiumClosed : I.voltageGatedPotassium
  calciumInfluxClosed : I.calciumInflux
  channelActivationKineticsClosed : I.channelActivationKinetics

def IonChannelDynamicsClosed (I : IonChannelDynamicsPackage) : Prop :=
  I.voltageGatedSodium ∧ I.voltageGatedPotassium ∧
  I.calciumInflux ∧ I.channelActivationKinetics

theorem ion_channel_dynamics_closed_from_evidence
    (I : IonChannelDynamicsPackage) (E : IonChannelDynamicsEvidence I) :
    IonChannelDynamicsClosed I := by
  exact And.intro E.voltageGatedSodiumClosed
    (And.intro E.voltageGatedPotassiumClosed
      (And.intro E.calciumInfluxClosed E.channelActivationKineticsClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse