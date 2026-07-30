import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure NeuralFieldEquation where
  firingRateField : Prop
  synapticKernel : Prop
  externalInput : Prop
  firingRateFieldClosed : firingRateField
  synapticKernelClosed : synapticKernel
  externalInputClosed : externalInput

def NeuralFieldEquationClosed (N : NeuralFieldEquation) : Prop :=
  N.firingRateField ∧ N.synapticKernel ∧ N.externalInput

theorem neural_field_equation_closed_from_evidence (N : NeuralFieldEquation) :
    NeuralFieldEquationClosed N := by
  exact And.intro N.firingRateFieldClosed (And.intro N.synapticKernelClosed N.externalInputClosed)

structure CorticalWavePropagation where
  waveSpeed : Prop
  excitationInhibitionBalance : Prop
  propagationDirection : Prop
  waveSpeedClosed : waveSpeed
  excitationInhibitionBalanceClosed : excitationInhibitionBalance
  propagationDirectionClosed : propagationDirection

def CorticalWavePropagationClosed (C : CorticalWavePropagation) : Prop :=
  C.waveSpeed ∧ C.excitationInhibitionBalance ∧ C.propagationDirection

theorem cortical_wave_propagation_closed_from_evidence (C : CorticalWavePropagation) :
    CorticalWavePropagationClosed C := by
  exact And.intro C.waveSpeedClosed
    (And.intro C.excitationInhibitionBalanceClosed C.propagationDirectionClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse