import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.ConnectomicsEndpoint

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorAdmittedObject where
  gabaType : GabaReceptorType
  kineticsModel : HodgkinHuxleyKinetics
  fieldModel : NeuralPopulationModel
  connectomData : ConnectomicsEvidence
  conclusion : Prop

structure GabaReceptorAdmissibleClass where
  object : GabaReceptorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GabaReceptorClosure (A : GabaReceptorAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gaba_receptor_endgame (A : GabaReceptorAdmissibleClass) : GabaReceptorClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse