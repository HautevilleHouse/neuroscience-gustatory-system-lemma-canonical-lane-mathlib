import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure GustatoryCodingPackage where
  tasteReceptorTypes : Prop
  firingRateEncoding : Prop
  temporalCoding : Prop
  populationCoding : Prop

structure GustatoryCodingEvidence (G : GustatoryCodingPackage) where
  tasteReceptorTypesClosed : G.tasteReceptorTypes
  firingRateEncodingClosed : G.firingRateEncoding
  temporalCodingClosed : G.temporalCoding
  populationCodingClosed : G.populationCoding

def GustatoryCodingClosed (G : GustatoryCodingPackage) : Prop :=
  G.tasteReceptorTypes ∧ G.firingRateEncoding ∧
  G.temporalCoding ∧ G.populationCoding

theorem gustatory_coding_closed_from_evidence
    (G : GustatoryCodingPackage) (E : GustatoryCodingEvidence G) :
    GustatoryCodingClosed G := by
  exact And.intro E.tasteReceptorTypesClosed
    (And.intro E.firingRateEncodingClosed
      (And.intro E.temporalCodingClosed E.populationCodingClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse