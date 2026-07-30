import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure SobolevEmbeddingPackage where
  domain : Type u
  sobolevSpace : Type v
  targetSpace : Type w
  compactEmbedding : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbeddingPackage) where
  compactEmbeddingClosed : S.compactEmbedding

def SobolevEmbeddingClosed (S : SobolevEmbeddingPackage) : Prop :=
  S.compactEmbedding

theorem sobolev_embedding_closed_from_evidence (S : SobolevEmbeddingPackage)
    (Ev : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact Ev.compactEmbeddingClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse