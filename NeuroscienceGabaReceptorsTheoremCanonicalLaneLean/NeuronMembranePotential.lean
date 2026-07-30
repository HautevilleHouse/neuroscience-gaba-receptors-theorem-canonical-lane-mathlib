import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure NeuronMembranePotential where
  ionConcentrations : Prop
  nernstPotential : Prop
  membraneCapacitance : Prop
  ionConcentrationsClosed : ionConcentrations
  nernstPotentialClosed : nernstPotential
  membraneCapacitanceClosed : membraneCapacitance

def NeuronMembranePotentialClosed (N : NeuronMembranePotential) : Prop :=
  N.ionConcentrations ∧ N.nernstPotential ∧ N.membraneCapacitance

theorem neuron_membrane_potential_closed_from_evidence (N : NeuronMembranePotential) :
    NeuronMembranePotentialClosed N := by
  exact And.intro N.ionConcentrationsClosed (And.intro N.nernstPotentialClosed N.membraneCapacitanceClosed)

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse