import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure InhibitoryTransmissionPackage where
  postsynapticInhibition : Prop
  shuntingInhibition : Prop
  feedforwardInhibition : Prop
  feedbackInhibition : Prop
  networkRhythmGeneration : Prop

structure InhibitoryTransmissionEvidence (I : InhibitoryTransmissionPackage) where
  postsynapticInhibitionClosed : I.postsynapticInhibition
  shuntingInhibitionClosed : I.shuntingInhibition
  feedforwardInhibitionClosed : I.feedforwardInhibition
  feedbackInhibitionClosed : I.feedbackInhibition
  networkRhythmGenerationClosed : I.networkRhythmGeneration

def InhibitoryTransmissionClosed (I : InhibitoryTransmissionPackage) : Prop :=
  I.postsynapticInhibition ∧ I.shuntingInhibition ∧
  I.feedforwardInhibition ∧ I.feedbackInhibition ∧ I.networkRhythmGeneration

theorem inhibitory_transmission_closed_from_evidence (I : InhibitoryTransmissionPackage)
    (E : InhibitoryTransmissionEvidence I) : InhibitoryTransmissionClosed I := by
  exact And.intro E.postsynapticInhibitionClosed
    (And.intro E.shuntingInhibitionClosed
      (And.intro E.feedforwardInhibitionClosed
        (And.intro E.feedbackInhibitionClosed E.networkRhythmGenerationClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
