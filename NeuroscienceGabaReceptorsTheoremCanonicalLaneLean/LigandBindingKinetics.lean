import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure LigandBindingKineticsPackage where
  bindingRate : ℝ
  unbindingRate : ℝ
  affinityConstant : ℝ
  cooperativity : Prop
  bindingRatePositive : bindingRate > 0
  unbindingRatePositive : unbindingRate > 0
  affinityDerived : affinityConstant = unbindingRate / bindingRate

structure LigandBindingKineticsEvidence (L : LigandBindingKineticsPackage) where
  cooperativityClosed : L.cooperativity

def LigandBindingKineticsClosed (L : LigandBindingKineticsPackage) : Prop :=
  L.cooperativity

theorem ligand_binding_kinetics_closed_from_evidence
    (L : LigandBindingKineticsPackage) (E : LigandBindingKineticsEvidence L) :
    LigandBindingKineticsClosed L := by
  exact E.cooperativityClosed

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse