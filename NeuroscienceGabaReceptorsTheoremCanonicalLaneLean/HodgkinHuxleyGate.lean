import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.GabaReceptorTypes

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure HodgkinHuxleyKinetics where
  sodiumActivation : Float -> Float
  potassiumActivation : Float -> Float
  leakConductance : Float

def ionConductanceModel : HodgkinHuxleyKinetics :=
  { sodiumActivation := fun v => 1.0 / (1.0 + Real.exp (-(v + 40.0) / 5.0)),
    potassiumActivation := fun v => 1.0 / (1.0 + Real.exp (-(v + 50.0) / 10.0)),
    leakConductance := 0.3 }

structure InhibitorySynapticCurrent (subunit : GabaReceptorType) where
  reversalPotential : Float
  conductance : Float
  activationTimeConstant : Float
  deactivationTimeConstant : Float

def gabaSynapticCurrent (subunit : GabaReceptorType) : InhibitorySynapticCurrent subunit :=
  { reversalPotential := -70.0,
    conductance := subunit.chlorideChannelConductance,
    activationTimeConstant := 0.1,
    deactivationTimeConstant := 10.0 }

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse