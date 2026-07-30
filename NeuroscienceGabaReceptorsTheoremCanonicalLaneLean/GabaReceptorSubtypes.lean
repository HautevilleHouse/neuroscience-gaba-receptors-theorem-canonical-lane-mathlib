import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsTheoremCanonicalLaneLean

structure GabaReceptorSubtype (α : Type) where
  subunitComposition : List α
  chloridePermeability : Prop
  benzodiazepineSensitivity : Prop
  synapticLocalization : Prop
  desensitizationKinetics : Prop

structure GabaReceptorSubtypesPackage where
  gabaA : GabaReceptorSubtype String
  gabaB : GabaReceptorSubtype String
  gabaC : GabaReceptorSubtype String
  subtypeFunctionalDistinction : Prop
  pharmacologicalProfiles : Prop

structure GabaReceptorSubtypesEvidence (P : GabaReceptorSubtypesPackage) where
  gabaAClosed : P.gabaA.chloridePermeability ∧ P.gabaA.benzodiazepineSensitivity
  gabaBClosed : P.gabaB.chloridePermeability
  gabaCClosed : P.gabaC.chloridePermeability
  subtypeFunctionalDistinctionClosed : P.subtypeFunctionalDistinction
  pharmacologicalProfilesClosed : P.pharmacologicalProfiles

def GabaReceptorSubtypesClosed (P : GabaReceptorSubtypesPackage) : Prop :=
  P.subtypeFunctionalDistinction ∧ P.pharmacologicalProfiles

theorem gaba_receptor_subtypes_closed_from_evidence (P : GabaReceptorSubtypesPackage)
    (E : GabaReceptorSubtypesEvidence P) : GabaReceptorSubtypesClosed P := by
  exact And.intro E.subtypeFunctionalDistinctionClosed E.pharmacologicalProfilesClosed

end NeuroscienceGabaReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
