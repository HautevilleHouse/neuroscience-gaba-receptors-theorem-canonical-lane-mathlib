import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorSubunit where
  alphaSubunit : Prop
  betaSubunit : Prop
  gammaSubunit : Prop
  pentamericAssembly : Prop
  alphaSubunitClosed : alphaSubunit
  betaSubunitClosed : betaSubunit
  gammaSubunitClosed : gammaSubunit
  pentamericAssemblyClosed : pentamericAssembly

def GabaReceptorSubunitClosed (G : GabaReceptorSubunit) : Prop :=
  G.alphaSubunit ∧ G.betaSubunit ∧ G.gammaSubunit ∧ G.pentamericAssembly

theorem gaba_receptor_subunit_closed_from_evidence (G : GabaReceptorSubunit) :
    GabaReceptorSubunitClosed G := by
  exact And.intro G.alphaSubunitClosed
    (And.intro G.betaSubunitClosed (And.intro G.gammaSubunitClosed G.pentamericAssemblyClosed))

structure GabaAClBindingSite where
  agonistBinding : Prop
  chlorideChannelGating : Prop
  bindingAffinity : Prop
  agonistBindingClosed : agonistBinding
  chlorideChannelGatingClosed : chlorideChannelGating
  bindingAffinityClosed : bindingAffinity

def GabaAClBindingSiteClosed (B : GabaAClBindingSite) : Prop :=
  B.agonistBinding ∧ B.chlorideChannelGating ∧ B.bindingAffinity

theorem gaba_a_cl_binding_site_closed_from_evidence (B : GabaAClBindingSite) :
    GabaAClBindingSiteClosed B := by
  exact And.intro B.agonistBindingClosed (And.intro B.chlorideChannelGatingClosed B.bindingAffinityClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse