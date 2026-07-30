import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure ChannelConductanceStatesPackage where
  openProbability : ℝ
  singleChannelConductance : ℝ
  meanOpenTime : ℝ
  statesClassified : Prop
  openProbabilityInUnitInterval : 0 ≤ openProbability ∧ openProbability ≤ 1
  conductancePositive : singleChannelConductance > 0
  meanOpenTimePositive : meanOpenTime > 0

structure ChannelConductanceStatesEvidence (C : ChannelConductanceStatesPackage) where
  statesClassifiedClosed : C.statesClassified

def ChannelConductanceStatesClosed (C : ChannelConductanceStatesPackage) : Prop :=
  C.statesClassified

theorem channel_conductance_states_closed_from_evidence
    (C : ChannelConductanceStatesPackage) (E : ChannelConductanceStatesEvidence C) :
    ChannelConductanceStatesClosed C := by
  exact E.statesClassifiedClosed

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse