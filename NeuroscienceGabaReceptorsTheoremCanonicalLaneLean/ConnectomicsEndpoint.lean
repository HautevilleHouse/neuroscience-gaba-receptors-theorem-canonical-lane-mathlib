import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.NeuralFieldClosedLoop

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure SynapticWeightMatrix where
  preSynaptic : String
  postSynaptic : String
  weight : Float

def hippocampalGabaInhibition : List SynapticWeightMatrix :=
  [{ preSynaptic := "CA3 pyramidal", postSynaptic := "CA1 pyramidal", weight := 0.8 },
   { preSynaptic := "Basket cell", postSynaptic := "Pyramidal cell", weight := -0.9 }]

structure ConnectomicsEvidence where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  gabaergicSynapseDensity : Float
  gabaergicSynapseDensityPositive : gabaergicSynapseDensity > 0.0

def ConnectomicsEndpointClosed (E : ConnectomicsEvidence) : Prop :=
  E.structuralConnectivity ∧ E.functionalConnectivity ∧ E.gabaergicSynapseDensityPositive

theorem connectomics_endpoint_closed (E : ConnectomicsEvidence) : ConnectomicsEndpointClosed E :=
  And.intro E.structuralConnectivity (And.intro E.functionalConnectivity E.gabaergicSynapseDensityPositive)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse