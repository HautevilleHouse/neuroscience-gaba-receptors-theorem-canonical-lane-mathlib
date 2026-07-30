import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure DisinhibitionPackage where
  interneuronSubtypes : Prop
  gabaReleaseDynamics : Prop
  postsynapticReceptorActivation : Prop
  circuitDisinhibition : Prop
  networkStateSwitch : Prop

structure DisinhibitionEvidence (D : DisinhibitionPackage) where
  interneuronSubtypesClosed : D.interneuronSubtypes
  gabaReleaseDynamicsClosed : D.gabaReleaseDynamics
  postsynapticReceptorActivationClosed : D.postsynapticReceptorActivation
  circuitDisinhibitionClosed : D.circuitDisinhibition
  networkStateSwitchClosed : D.networkStateSwitch

def DisinhibitionClosed (D : DisinhibitionPackage) : Prop :=
  D.interneuronSubtypes ∧ D.gabaReleaseDynamics ∧ D.postsynapticReceptorActivation ∧ D.circuitDisinhibition ∧ D.networkStateSwitch

theorem disinhibition_closed_from_evidence (D : DisinhibitionPackage) (E : DisinhibitionEvidence D) : DisinhibitionClosed D := by
  exact And.intro E.interneuronSubtypesClosed
    (And.intro E.gabaReleaseDynamicsClosed
      (And.intro E.postsynapticReceptorActivationClosed
        (And.intro E.circuitDisinhibitionClosed E.networkStateSwitchClosed)))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse