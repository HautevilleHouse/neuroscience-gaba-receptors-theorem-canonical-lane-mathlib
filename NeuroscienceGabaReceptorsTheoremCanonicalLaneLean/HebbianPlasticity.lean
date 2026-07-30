import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure HebbianLearning where
  coincidentActivity : Prop
  synapticStrengthening : Prop
  synapticWeakening : Prop
  coincidentActivityClosed : coincidentActivity
  synapticStrengtheningClosed : synapticStrengthening
  synapticWeakeningClosed : synapticWeakening

def HebbianLearningClosed (H : HebbianLearning) : Prop :=
  H.coincidentActivity ∧ H.synapticStrengthening ∧ H.synapticWeakening

theorem hebbian_learning_closed_from_evidence (H : HebbianLearning) :
    HebbianLearningClosed H := by
  exact And.intro H.coincidentActivityClosed
    (And.intro H.synapticStrengtheningClosed H.synapticWeakeningClosed)

structure SpikingTimingDependentPlasticity where
  prePostSpiking : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  prePostSpikingClosed : prePostSpiking
  longTermPotentiationClosed : longTermPotentiation
  longTermDepressionClosed : longTermDepression

def SpikingTimingDependentPlasticityClosed (S : SpikingTimingDependentPlasticity) : Prop :=
  S.prePostSpiking ∧ S.longTermPotentiation ∧ S.longTermDepression

theorem spiking_timing_dependent_plasticity_closed_from_evidence (S : SpikingTimingDependentPlasticity) :
    SpikingTimingDependentPlasticityClosed S := by
  exact And.intro S.prePostSpikingClosed
    (And.intro S.longTermPotentiationClosed S.longTermDepressionClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse