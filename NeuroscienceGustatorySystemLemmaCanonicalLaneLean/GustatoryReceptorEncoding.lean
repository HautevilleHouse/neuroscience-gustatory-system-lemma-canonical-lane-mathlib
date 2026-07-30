import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryReceptorEncoding where
  tasteReceptor : Type u
  receptorLigandBinding : Type v
  receptorActivationKinetics : Prop
  signalTransductionCascade : Prop
  encodingFidelity : Prop

structure GustatoryReceptorEncodingEvidence (G : GustatoryReceptorEncoding) where
  receptorActivationKineticsClosed : G.receptorActivationKinetics
  signalTransductionCascadeClosed : G.signalTransductionCascade
  encodingFidelityClosed : G.encodingFidelity

def GustatoryReceptorEncodingClosed (G : GustatoryReceptorEncoding) : Prop :=
  G.receptorActivationKinetics ∧ G.signalTransductionCascade ∧ G.encodingFidelity

theorem gustatory_receptor_encoding_closed_from_evidence
    (G : GustatoryReceptorEncoding) (E : GustatoryReceptorEncodingEvidence G) :
    GustatoryReceptorEncodingClosed G := by
  exact And.intro E.receptorActivationKineticsClosed
    (And.intro E.signalTransductionCascadeClosed E.encodingFidelityClosed)

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse