import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorSubunit where
  gene : String
  proteinSequenceLength : Nat
  transmembraneDomains : Nat
  bindingAffinity : Float

structure GabaReceptorType where
  subunitComposition : List GabaReceptorSubunit
  chlorideChannelConductance : Float
  benzodiazepineSensitivity : Float

def GabaAReceptor : GabaReceptorType :=
  { subunitComposition := [{ gene := "GABRA1", proteinSequenceLength := 456, transmembraneDomains := 4, bindingAffinity := 0.5 },
                           { gene := "GABRB2", proteinSequenceLength := 474, transmembraneDomains := 4, bindingAffinity := 0.7 },
                           { gene := "GABRG2", proteinSequenceLength := 467, transmembraneDomains := 4, bindingAffinity := 0.6 }],
    chlorideChannelConductance := 30.0,
    benzodiazepineSensitivity := 0.8 }

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse