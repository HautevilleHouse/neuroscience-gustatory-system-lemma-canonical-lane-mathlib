import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryReceptorBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : receptorType -> ligandType -> ℝ
  dissociationConstant : ℝ
  hillCoefficient : ℝ
  cooperativeBindingProperty : Prop
  bindingSiteNumber : ℕ

structure GustatoryReceptorBindingEvidence (G : GustatoryReceptorBindingPackage) where
  dissociationConstantClosed : G.dissociationConstant > 0
  hillCoefficientClosed : G.hillCoefficient > 0
  cooperativeBindingPropertyClosed : G.cooperativeBindingProperty

def GustatoryReceptorBindingClosed (G : GustatoryReceptorBindingPackage) : Prop :=
  G.dissociationConstant > 0 ∧ G.hillCoefficient > 0 ∧ G.cooperativeBindingProperty

theorem gustatory_receptor_binding_closed_from_evidence
    (G : GustatoryReceptorBindingPackage) (E : GustatoryReceptorBindingEvidence G) :
    GustatoryReceptorBindingClosed G := by
  exact And.intro E.dissociationConstantClosed
    (And.intro E.hillCoefficientClosed E.cooperativeBindingPropertyClosed)

end HautevilleHouse
end NeuroscienceGustatorySystemLemmaCanonicalLaneLean