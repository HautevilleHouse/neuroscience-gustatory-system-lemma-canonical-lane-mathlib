import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TasteSignalTransduction where
  tasteCell : Type u
  secondMessengerSystem : Type v
  ionChannelModulation : Prop
  neurotransmitterRelease : Prop
  synapticTransmission : Prop

structure TasteSignalTransductionEvidence (T : TasteSignalTransduction) where
  ionChannelModulationClosed : T.ionChannelModulation
  neurotransmitterReleaseClosed : T.neurotransmitterRelease
  synapticTransmissionClosed : T.synapticTransmission

def TasteSignalTransductionClosed (T : TasteSignalTransduction) : Prop :=
  T.ionChannelModulation ∧ T.neurotransmitterRelease ∧ T.synapticTransmission

theorem taste_signal_transduction_closed_from_evidence
    (T : TasteSignalTransduction) (E : TasteSignalTransductionEvidence T) :
    TasteSignalTransductionClosed T := by
  exact And.intro E.ionChannelModulationClosed
    (And.intro E.neurotransmitterReleaseClosed E.synapticTransmissionClosed)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse