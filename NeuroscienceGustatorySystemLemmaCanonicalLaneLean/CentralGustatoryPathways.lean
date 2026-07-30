import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure CentralGustatoryPathwaysPackage {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} where
  brainstemRelay : Type u
  thalamocorticalProjection : Prop
  insularCortexMap : Prop
  orbitofrontalIntegration : Prop
  hedonicEvaluation : Prop

structure CentralGustatoryPathwaysEvidence {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} (C : CentralGustatoryPathwaysPackage R T) where
  brainstemRelayClosed : C.brainstemRelay
  thalamocorticalProjectionClosed : C.thalamocorticalProjection
  insularCortexMapClosed : C.insularCortexMap
  orbitofrontalIntegrationClosed : C.orbitofrontalIntegration
  hedonicEvaluationClosed : C.hedonicEvaluation

def CentralGustatoryPathwaysClosed {R : GustatoryReceptorPackage}
    {T : TasteCodingPackage R} (C : CentralGustatoryPathwaysPackage R T) : Prop :=
  C.brainstemRelay ∧ C.thalamocorticalProjection ∧
  C.insularCortexMap ∧ C.orbitofrontalIntegration ∧
  C.hedonicEvaluation

theorem central_gustatory_pathways_closed_from_evidence
    {R : GustatoryReceptorPackage} {T : TasteCodingPackage R}
    (C : CentralGustatoryPathwaysPackage R T)
    (E : CentralGustatoryPathwaysEvidence C) :
    CentralGustatoryPathwaysClosed C := by
  exact And.intro E.brainstemRelayClosed
    (And.intro E.thalamocorticalProjectionClosed
      (And.intro E.insularCortexMapClosed
        (And.intro E.orbitofrontalIntegrationClosed
          E.hedonicEvaluationClosed)))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse