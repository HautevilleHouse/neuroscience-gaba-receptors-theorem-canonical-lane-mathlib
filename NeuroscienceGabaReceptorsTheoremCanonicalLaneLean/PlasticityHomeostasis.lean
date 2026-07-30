import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure PlasticityHomeostasisPackage where
  hebbianPlasticity : Prop
  homeostaticScaling : Prop
  receptorTrafficking : Prop
  geneExpressionRegulation : Prop
  longTermPotentiationGaba : Prop
  longTermDepressionGaba : Prop

structure PlasticityHomeostasisEvidence (P : PlasticityHomeostasisPackage) where
  hebbianPlasticityClosed : P.hebbianPlasticity
  homeostaticScalingClosed : P.homeostaticScaling
  receptorTraffickingClosed : P.receptorTrafficking
  geneExpressionRegulationClosed : P.geneExpressionRegulation
  longTermPotentiationGabaClosed : P.longTermPotentiationGaba
  longTermDepressionGabaClosed : P.longTermDepressionGaba

def PlasticityHomeostasisClosed (P : PlasticityHomeostasisPackage) : Prop :=
  P.hebbianPlasticity ∧ P.homeostaticScaling ∧
  P.receptorTrafficking ∧ P.geneExpressionRegulation ∧
  P.longTermPotentiationGaba ∧ P.longTermDepressionGaba

theorem plasticity_homeostasis_closed_from_evidence (P : PlasticityHomeostasisPackage)
    (E : PlasticityHomeostasisEvidence P) : PlasticityHomeostasisClosed P := by
  exact And.intro E.hebbianPlasticityClosed
    (And.intro E.homeostaticScalingClosed
      (And.intro E.receptorTraffickingClosed
        (And.intro E.geneExpressionRegulationClosed
          (And.intro E.longTermPotentiationGabaClosed E.longTermDepressionGabaClosed))))

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
