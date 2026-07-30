import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure HodgkinHuxleyGating where
  nGating : Prop
  mGating : Prop
  hGating : Prop
  nGatingClosed : nGating
  mGatingClosed : mGating
  hGatingClosed : hGating

def HodgkinHuxleyGatingClosed (H : HodgkinHuxleyGating) : Prop :=
  H.nGating ∧ H.mGating ∧ H.hGating

theorem hodgkin_huxley_gating_closed_from_evidence (H : HodgkinHuxleyGating) :
    HodgkinHuxleyGatingClosed H := by
  exact And.intro H.nGatingClosed (And.intro H.mGatingClosed H.hGatingClosed)

structure HodgkinHuxleyCurrent where
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  sodiumCurrentClosed : sodiumCurrent
  potassiumCurrentClosed : potassiumCurrent
  leakCurrentClosed : leakCurrent

def HodgkinHuxleyCurrentClosed (H : HodgkinHuxleyCurrent) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent

theorem hodgkin_huxley_current_closed_from_evidence (H : HodgkinHuxleyCurrent) :
    HodgkinHuxleyCurrentClosed H := by
  exact And.intro H.sodiumCurrentClosed (And.intro H.potassiumCurrentClosed H.leakCurrentClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse