import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaergicInterneuron where
  interneuronType : Prop
  connectivityPattern : Prop
  modulationOfExcitability : Prop
  interneuronTypeClosed : interneuronType
  connectivityPatternClosed : connectivityPattern
  modulationOfExcitabilityClosed : modulationOfExcitability

def GabaergicInterneuronClosed (G : GabaergicInterneuron) : Prop :=
  G.interneuronType ∧ G.connectivityPattern ∧ G.modulationOfExcitability

theorem gabaergic_interneuron_closed_from_evidence (G : GabaergicInterneuron) :
    GabaergicInterneuronClosed G := by
  exact And.intro G.interneuronTypeClosed
    (And.intro G.connectivityPatternClosed G.modulationOfExcitabilityClosed)

structure FeedforwardInhibition where
  inputFromExcitatory : Prop
  gabaReleaseTiming : Prop
  outputToPyramidal : Prop
  inputFromExcitatoryClosed : inputFromExcitatory
  gabaReleaseTimingClosed : gabaReleaseTiming
  outputToPyramidalClosed : outputToPyramidal

def FeedforwardInhibitionClosed (F : FeedforwardInhibition) : Prop :=
  F.inputFromExcitatory ∧ F.gabaReleaseTiming ∧ F.outputToPyramidal

theorem feedforward_inhibition_closed_from_evidence (F : FeedforwardInhibition) :
    FeedforwardInhibitionClosed F := by
  exact And.intro F.inputFromExcitatoryClosed
    (And.intro F.gabaReleaseTimingClosed F.outputToPyramidalClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse