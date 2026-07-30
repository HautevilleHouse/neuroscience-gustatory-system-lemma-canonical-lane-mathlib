import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TasteTransductionSignalingPackage where
  tasteReceptorCell : Type u
  secondMessengerSystem : Type v
  ionChannelActivation : Prop
  neurotransmitterRelease : Prop
  signalAmplificationGain : ℝ
  adaptationRate : ℝ

structure TasteTransductionSignalingEvidence (T : TasteTransductionSignalingPackage) where
  ionChannelActivationClosed : T.ionChannelActivation
  neurotransmitterReleaseClosed : T.neurotransmitterRelease
  signalAmplificationGainClosed : T.signalAmplificationGain > 0
  adaptationRateClosed : T.adaptationRate ≥ 0

def TasteTransductionSignalingClosed (T : TasteTransductionSignalingPackage) : Prop :=
  T.ionChannelActivation ∧ T.neurotransmitterRelease ∧
  T.signalAmplificationGain > 0 ∧ T.adaptationRate ≥ 0

theorem taste_transduction_signaling_closed_from_evidence
    (T : TasteTransductionSignalingPackage) (E : TasteTransductionSignalingEvidence T) :
    TasteTransductionSignalingClosed T := by
  exact And.intro E.ionChannelActivationClosed
    (And.intro E.neurotransmitterReleaseClosed
      (And.intro E.signalAmplificationGainClosed E.adaptationRateClosed))

end HautevilleHouse
end NeuroscienceGustatorySystemLemmaCanonicalLaneLean