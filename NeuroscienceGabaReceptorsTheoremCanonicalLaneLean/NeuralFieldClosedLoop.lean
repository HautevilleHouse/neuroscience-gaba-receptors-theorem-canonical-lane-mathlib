import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.HodgkinHuxleyGate

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure NeuralPopulationModel where
  excitatoryRate : Float
  inhibitoryRate : Float
  excitatoryTimeConstant : Float
  inhibitoryTimeConstant : Float
  connectionStrengthEE : Float
  connectionStrengthEI : Float
  connectionStrengthIE : Float
  connectionStrengthII : Float

def classicalWilsonCowan : NeuralPopulationModel :=
  { excitatoryRate := 0.0, inhibitoryRate := 0.0,
    excitatoryTimeConstant := 5.0, inhibitoryTimeConstant := 10.0,
    connectionStrengthEE := 1.5, connectionStrengthEI := -2.0,
    connectionStrengthIE := 1.0, connectionStrengthII := -1.0 }

structure NeuralFieldClosedLoopParams where
  gabaConductanceModulation : Float
  hebbianPlasticityRate : Float
  fieldCouplingStrength : Float

def neuralFieldWithGaba (params : NeuralFieldClosedLoopParams) : Prop :=
  params.gabaConductanceModulation > 0.0 ∧
  params.hebbianPlasticityRate > 0.0 ∧
  params.fieldCouplingStrength > 0.0

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse