import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure CluxConductancePackage where
  chlorideEquilibriumPotential : Prop
  drivingForce : Prop
  conductanceDensity : Prop
  currentMagnitude : Prop
  reversalPotentialShift : Prop

structure CluxConductanceEvidence (C : CluxConductancePackage) where
  chlorideEquilibriumPotentialClosed : C.chlorideEquilibriumPotential
  drivingForceClosed : C.drivingForce
  conductanceDensityClosed : C.conductanceDensity
  currentMagnitudeClosed : C.currentMagnitude
  reversalPotentialShiftClosed : C.reversalPotentialShift

def CluxConductanceClosed (C : CluxConductancePackage) : Prop :=
  C.chlorideEquilibriumPotential ∧ C.drivingForce ∧
  C.conductanceDensity ∧ C.currentMagnitude ∧ C.reversalPotentialShift

theorem clux_conductance_closed_from_evidence (C : CluxConductancePackage)
    (E : CluxConductanceEvidence C) : CluxConductanceClosed C := by
  exact And.intro E.chlorideEquilibriumPotentialClosed
    (And.intro E.drivingForceClosed
      (And.intro E.conductanceDensityClosed
        (And.intro E.currentMagnitudeClosed E.reversalPotentialShiftClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
