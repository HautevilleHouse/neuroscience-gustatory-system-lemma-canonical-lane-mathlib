import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitterRelease : Prop
  receptorBinding : Prop
  postsynapticPotential : Prop
  vesicleCycle : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorBindingClosed : S.receptorBinding
  postsynapticPotentialClosed : S.postsynapticPotential
  vesicleCycleClosed : S.vesicleCycle

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.neurotransmitterRelease ∧ S.receptorBinding ∧
  S.postsynapticPotential ∧ S.vesicleCycle

theorem synaptic_transmission_closed_from_evidence
    (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.neurotransmitterReleaseClosed
    (And.intro E.receptorBindingClosed
      (And.intro E.postsynapticPotentialClosed E.vesicleCycleClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse