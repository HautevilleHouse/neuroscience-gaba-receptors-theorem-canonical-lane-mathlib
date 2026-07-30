import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.GabaReceptorBinding

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure SynapticTransmissionPackage {G : GabaReceptorPackage} where
  vesicleRelease : Prop
  cleftDiffusion : Prop
  postsynapticBinding : Prop
  chlorideInflux : Prop
  postsynapticPotential : Prop

structure SynapticTransmissionEvidence {G : GabaReceptorPackage}
    (S : SynapticTransmissionPackage G) where
  vesicleReleaseClosed : S.vesicleRelease
  cleftDiffusionClosed : S.cleftDiffusion
  postsynapticBindingClosed : S.postsynapticBinding
  chlorideInfluxClosed : S.chlorideInflux
  postsynapticPotentialClosed : S.postsynapticPotential

def SynapticTransmissionClosed {G : GabaReceptorPackage}
    (S : SynapticTransmissionPackage G) : Prop :=
  S.vesicleRelease ∧ S.cleftDiffusion ∧
  S.postsynapticBinding ∧ S.chlorideInflux ∧ S.postsynapticPotential

theorem synaptic_transmission_closed_from_evidence
    {G : GabaReceptorPackage} (S : SynapticTransmissionPackage G)
    (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S := by
  exact And.intro E.vesicleReleaseClosed
    (And.intro E.cleftDiffusionClosed
      (And.intro E.postsynapticBindingClosed
        (And.intro E.chlorideInfluxClosed E.postsynapticPotentialClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse