import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  synapticWeightUpdate : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  gabaModulation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  gabaModulationClosed : H.gabaModulation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.synapticWeightUpdate ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.gabaModulation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.synapticWeightUpdateClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.gabaModulationClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse