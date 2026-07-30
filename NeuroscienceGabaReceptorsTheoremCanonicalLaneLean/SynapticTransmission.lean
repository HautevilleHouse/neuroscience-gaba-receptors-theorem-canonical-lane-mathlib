import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure SynapticTransmission where
  neurotransmitterRelease : Prop
  postsynapticReceptorActivation : Prop
  postsynapticPotential : Prop
  neurotransmitterReleaseClosed : neurotransmitterRelease
  postsynapticReceptorActivationClosed : postsynapticReceptorActivation
  postsynapticPotentialClosed : postsynapticPotential

def SynapticTransmissionClosed (S : SynapticTransmission) : Prop :=
  S.neurotransmitterRelease ∧ S.postsynapticReceptorActivation ∧ S.postsynapticPotential

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmission) :
    SynapticTransmissionClosed S := by
  exact And.intro S.neurotransmitterReleaseClosed
    (And.intro S.postsynapticReceptorActivationClosed S.postsynapticPotentialClosed)

structure InhibitoryPostSynapticPotential where
  gabaRelease : Prop
  clChannelOpening : Prop
  hyperpolarization : Prop
  gabaReleaseClosed : gabaRelease
  clChannelOpeningClosed : clChannelOpening
  hyperpolarizationClosed : hyperpolarization

def InhibitoryPostSynapticPotentialClosed (I : InhibitoryPostSynapticPotential) : Prop :=
  I.gabaRelease ∧ I.clChannelOpening ∧ I.hyperpolarization

theorem inhibitory_post_synaptic_potential_closed_from_evidence (I : InhibitoryPostSynapticPotential) :
    InhibitoryPostSynapticPotentialClosed I := by
  exact And.intro I.gabaReleaseClosed (And.intro I.clChannelOpeningClosed I.hyperpolarizationClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse