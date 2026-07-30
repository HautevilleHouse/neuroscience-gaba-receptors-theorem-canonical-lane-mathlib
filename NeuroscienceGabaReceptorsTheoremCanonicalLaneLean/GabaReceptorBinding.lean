import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorSubunit where
  subunitType : String
  isFunctional : Prop

structure GabaReceptorPackage where
  receptorType : String
  subunits : List GabaReceptorSubunit
  chlorideConductance : Prop
  gabaBindingAffinity : Prop
  modulatorySites : Prop
  synapticLocalization : Prop

structure GabaReceptorEvidence (G : GabaReceptorPackage) where
  chlorideConductanceClosed : G.chlorideConductance
  gabaBindingAffinityClosed : G.gabaBindingAffinity
  modulatorySitesClosed : G.modulatorySites
  synapticLocalizationClosed : G.synapticLocalization

def GabaReceptorClosed (G : GabaReceptorPackage) : Prop :=
  G.chlorideConductance ∧ G.gabaBindingAffinity ∧
  G.modulatorySites ∧ G.synapticLocalization

theorem gaba_receptor_closed_from_evidence (G : GabaReceptorPackage)
    (E : GabaReceptorEvidence G) : GabaReceptorClosed G := by
  exact And.intro E.chlorideConductanceClosed
    (And.intro E.gabaBindingAffinityClosed
      (And.intro E.modulatorySitesClosed E.synapticLocalizationClosed))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse