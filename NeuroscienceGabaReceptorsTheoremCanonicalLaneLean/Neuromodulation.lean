import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure NeuromodulationPackage where
  tonicInhibition : Prop
  phasicInhibition : Prop
  extrasynapticReceptors : Prop
  ambientGabaLevels : Prop
  tonicPhasicBalance : Prop

structure NeuromodulationEvidence (N : NeuromodulationPackage) where
  tonicInhibitionClosed : N.tonicInhibition
  phasicInhibitionClosed : N.phasicInhibition
  extrasynapticReceptorsClosed : N.extrasynapticReceptors
  ambientGabaLevelsClosed : N.ambientGabaLevels
  tonicPhasicBalanceClosed : N.tonicPhasicBalance

def NeuromodulationClosed (N : NeuromodulationPackage) : Prop :=
  N.tonicInhibition ∧ N.phasicInhibition ∧
  N.extrasynapticReceptors ∧ N.ambientGabaLevels ∧ N.tonicPhasicBalance

theorem neuromodulation_closed_from_evidence (N : NeuromodulationPackage)
    (E : NeuromodulationEvidence N) : NeuromodulationClosed N := by
  exact And.intro E.tonicInhibitionClosed
    (And.intro E.phasicInhibitionClosed
      (And.intro E.extrasynapticReceptorsClosed
        (And.intro E.ambientGabaLevelsClosed E.tonicPhasicBalanceClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
