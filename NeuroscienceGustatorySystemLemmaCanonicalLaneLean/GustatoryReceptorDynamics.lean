import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryReceptorDynamics where
  tasteReceptorCell : Type u
  ionChannelDynamics : Type v
  membranePotential : Type w
  ligandBindingKinetics : Prop
  ionCurrentGeneration : Prop
  actionPotentialThreshold : Prop
  signalTransductionRate : Prop
  adaptationMechanism : Prop

structure GustatoryReceptorDynamicsEvidence (G : GustatoryReceptorDynamics) where
  ligandBindingKineticsClosed : G.ligandBindingKinetics
  ionCurrentGenerationClosed : G.ionCurrentGeneration
  actionPotentialThresholdClosed : G.actionPotentialThreshold
  signalTransductionRateClosed : G.signalTransductionRate
  adaptationMechanismClosed : G.adaptationMechanism

def GustatoryReceptorDynamicsClosed (G : GustatoryReceptorDynamics) : Prop :=
  G.ligandBindingKinetics ∧ G.ionCurrentGeneration ∧ G.actionPotentialThreshold ∧
  G.signalTransductionRate ∧ G.adaptationMechanism

theorem gustatory_receptor_dynamics_closed_from_evidence
    (G : GustatoryReceptorDynamics) (E : GustatoryReceptorDynamicsEvidence G) :
    GustatoryReceptorDynamicsClosed G := by
  exact And.intro E.ligandBindingKineticsClosed
    (And.intro E.ionCurrentGenerationClosed
      (And.intro E.actionPotentialThresholdClosed
        (And.intro E.signalTransductionRateClosed E.adaptationMechanismClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse