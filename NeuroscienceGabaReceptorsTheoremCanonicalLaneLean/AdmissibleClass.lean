import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GabaReceptor where
  subunitComposition : Type
  bindingAffinity : Prop
  conductanceState : Prop
  allostericModulation : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : GabaReceptor
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GabaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse