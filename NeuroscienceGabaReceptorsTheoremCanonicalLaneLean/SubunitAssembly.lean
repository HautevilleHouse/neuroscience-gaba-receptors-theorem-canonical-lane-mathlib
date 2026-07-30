import HautevilleHouse.NeuroscienceGabaReceptorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure SubunitAssemblyPackage where
  subunitTypes : List String
  stoichiometry : Nat
  pentameric : Prop
  assemblyPathway : Prop
  stoichiometryCorrect : stoichiometry = 5
  pentamericFromStoichiometry : pentameric

structure SubunitAssemblyEvidence (S : SubunitAssemblyPackage) where
  assemblyPathwayClosed : S.assemblyPathway

def SubunitAssemblyClosed (S : SubunitAssemblyPackage) : Prop :=
  S.assemblyPathway

theorem subunit_assembly_closed_from_evidence
    (S : SubunitAssemblyPackage) (E : SubunitAssemblyEvidence S) :
    SubunitAssemblyClosed S := by
  exact E.assemblyPathwayClosed

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse