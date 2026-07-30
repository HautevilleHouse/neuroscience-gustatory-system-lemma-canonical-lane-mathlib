import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGustatorySystemLemmaCanonicalLaneLean

structure TastePathwayPackage where
  cranialNerves : Prop
  brainstemRelay : Prop
  thalamicNucleus : Prop
  gustatoryCortex : Prop

structure TastePathwayEvidence (T : TastePathwayPackage) where
  cranialNervesClosed : T.cranialNerves
  brainstemRelayClosed : T.brainstemRelay
  thalamicNucleusClosed : T.thalamicNucleus
  gustatoryCortexClosed : T.gustatoryCortex

def TastePathwayClosed (T : TastePathwayPackage) : Prop :=
  T.cranialNerves ∧ T.brainstemRelay ∧
  T.thalamicNucleus ∧ T.gustatoryCortex

theorem taste_pathway_closed_from_evidence
    (T : TastePathwayPackage) (E : TastePathwayEvidence T) :
    TastePathwayClosed T := by
  exact And.intro E.cranialNervesClosed
    (And.intro E.brainstemRelayClosed
      (And.intro E.thalamicNucleusClosed E.gustatoryCortexClosed))

end NeuroscienceGustatorySystemLemmaCanonicalLaneLean
end HautevilleHouse