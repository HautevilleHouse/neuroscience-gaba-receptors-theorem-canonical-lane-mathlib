import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure AllostericModulationPackage where
  modulatorAffinity : ℝ
  efficacy : ℝ
  bindingSiteDistinct : Prop
  modulatorAffinityPositive : modulatorAffinity > 0
  efficacyPositive : efficacy > 0

structure AllostericModulationEvidence (A : AllostericModulationPackage) where
  bindingSiteDistinctClosed : A.bindingSiteDistinct

def AllostericModulationClosed (A : AllostericModulationPackage) : Prop :=
  A.bindingSiteDistinct

theorem allosteric_modulation_closed_from_evidence
    (A : AllostericModulationPackage) (E : AllostericModulationEvidence A) :
    AllostericModulationClosed A := by
  exact E.bindingSiteDistinctClosed

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse