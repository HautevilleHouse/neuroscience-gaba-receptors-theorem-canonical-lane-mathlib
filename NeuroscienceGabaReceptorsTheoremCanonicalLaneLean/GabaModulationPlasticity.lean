import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.GabaSynapticTransmission

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure ModulationPackage {G : GabaReceptorPackage}
    {S : SynapticTransmissionPackage G} where
  benzodiazepineSite : Prop
  barbiturateSite : Prop
  neurosteroidSite : Prop
  ethanolSensitivity : Prop
  phosphorylationRegulation : Prop
  traffickingDynamics : Prop

structure ModulationEvidence {G : GabaReceptorPackage}
    {S : SynapticTransmissionPackage G} (M : ModulationPackage G S) where
  benzodiazepineSiteClosed : M.benzodiazepineSite
  barbiturateSiteClosed : M.barbiturateSite
  neurosteroidSiteClosed : M.neurosteroidSite
  ethanolSensitivityClosed : M.ethanolSensitivity
  phosphorylationRegulationClosed : M.phosphorylationRegulation
  traffickingDynamicsClosed : M.traffickingDynamics

def ModulationClosed {G : GabaReceptorPackage}
    {S : SynapticTransmissionPackage G} (M : ModulationPackage G S) : Prop :=
  M.benzodiazepineSite ∧ M.barbiturateSite ∧
  M.neurosteroidSite ∧ M.ethanolSensitivity ∧
  M.phosphorylationRegulation ∧ M.traffickingDynamics

theorem modulation_closed_from_evidence
    {G : GabaReceptorPackage} {S : SynapticTransmissionPackage G}
    (M : ModulationPackage G S) (E : ModulationEvidence M) :
    ModulationClosed M := by
  exact And.intro E.benzodiazepineSiteClosed
    (And.intro E.barbiturateSiteClosed
      (And.intro E.neurosteroidSiteClosed
        (And.intro E.ethanolSensitivityClosed
          (And.intro E.phosphorylationRegulationClosed
            E.traffickingDynamicsClosed))))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse