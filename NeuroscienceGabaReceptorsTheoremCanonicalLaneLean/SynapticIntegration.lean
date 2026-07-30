import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure SynapticIntegrationPackage where
  presynapticInput : Prop
  postsynapticReceptorActivation : Prop
  conductanceChange : Prop
  membranePotentialShift : Prop
  spikeTimingDependence : Prop

structure SynapticIntegrationEvidence (S : SynapticIntegrationPackage) where
  presynapticInputClosed : S.presynapticInput
  postsynapticReceptorActivationClosed : S.postsynapticReceptorActivation
  conductanceChangeClosed : S.conductanceChange
  membranePotentialShiftClosed : S.membranePotentialShift
  spikeTimingDependenceClosed : S.spikeTimingDependence

def SynapticIntegrationClosed (S : SynapticIntegrationPackage) : Prop :=
  S.presynapticInput ∧ S.postsynapticReceptorActivation ∧
  S.conductanceChange ∧ S.membranePotentialShift ∧ S.spikeTimingDependence

theorem synaptic_integration_closed_from_evidence (S : SynapticIntegrationPackage)
    (E : SynapticIntegrationEvidence S) : SynapticIntegrationClosed S := by
  exact And.intro E.presynapticInputClosed
    (And.intro E.postsynapticReceptorActivationClosed
      (And.intro E.conductanceChangeClosed
        (And.intro E.membranePotentialShiftClosed E.spikeTimingDependenceClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
