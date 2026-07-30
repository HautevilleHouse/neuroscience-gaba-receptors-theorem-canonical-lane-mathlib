import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorPackage where
  receptorType : Type u
  subunitComposition : Type v
  chlorideIonFlux : Prop
  membranePotentialModulation : Prop
  inhibitorySynapticStrength : Prop

structure GabaReceptorEvidence (G : GabaReceptorPackage) where
  chlorideIonFluxClosed : G.chlorideIonFlux
  membranePotentialModulationClosed : G.membranePotentialModulation
  inhibitorySynapticStrengthClosed : G.inhibitorySynapticStrength

def GabaReceptorClosed (G : GabaReceptorPackage) : Prop :=
  G.chlorideIonFlux ∧ G.membranePotentialModulation ∧ G.inhibitorySynapticStrength

theorem gaba_receptor_closed_from_evidence (G : GabaReceptorPackage) (E : GabaReceptorEvidence G) : GabaReceptorClosed G := by
  exact And.intro E.chlorideIonFluxClosed (And.intro E.membranePotentialModulationClosed E.inhibitorySynapticStrengthClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse