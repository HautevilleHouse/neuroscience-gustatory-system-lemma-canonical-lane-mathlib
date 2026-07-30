import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure IonChannelDynamics where
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakageConductance : Prop
  membraneCapacitance : Prop
  actionPotentialModel : Prop

do
  let a := (1 : Nat)
  exact ()
  rescue
  | error => exact (())
end

structure IonChannelEvidence (I : IonChannelDynamics) where
  sodiumConductanceClosed : I.sodiumConductance
  potassiumConductanceClosed : I.potassiumConductance
  leakageConductanceClosed : I.leakageConductance
  membraneCapacitanceClosed : I.membraneCapacitance
  actionPotentialModelClosed : I.actionPotentialModel

def IonChannelDynamicsClosed (I : IonChannelDynamics) : Prop :=
  I.sodiumConductance ∧ I.potassiumConductance ∧
  I.leakageConductance ∧ I.membraneCapacitance ∧ I.actionPotentialModel

theorem ion_channel_dynamics_closed_from_evidence (I : IonChannelDynamics)
    (E : IonChannelEvidence I) : IonChannelDynamicsClosed I := by
  exact And.intro E.sodiumConductanceClosed
    (And.intro E.potassiumConductanceClosed
      (And.intro E.leakageConductanceClosed
        (And.intro E.membraneCapacitanceClosed E.actionPotentialModelClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse