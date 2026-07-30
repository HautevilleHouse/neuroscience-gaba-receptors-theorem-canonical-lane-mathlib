import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  synapticConnectivity : Prop
  networkTopology : Prop
  gabaCircuitMotifs : Prop
  inhibitoryMicrocircuits : Prop
  informationFlow : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  synapticConnectivityClosed : C.synapticConnectivity
  networkTopologyClosed : C.networkTopology
  gabaCircuitMotifsClosed : C.gabaCircuitMotifs
  inhibitoryMicrocircuitsClosed : C.inhibitoryMicrocircuits
  informationFlowClosed : C.informationFlow

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.synapticConnectivity ∧ C.networkTopology ∧ C.gabaCircuitMotifs ∧ C.inhibitoryMicrocircuits ∧ C.informationFlow

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.synapticConnectivityClosed
    (And.intro E.networkTopologyClosed
      (And.intro E.gabaCircuitMotifsClosed
        (And.intro E.inhibitoryMicrocircuitsClosed E.informationFlowClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse