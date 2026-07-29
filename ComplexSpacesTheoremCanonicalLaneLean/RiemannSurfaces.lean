import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSpacesTheoremCanonicalLaneLean

structure RiemannSurfacePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  holomorphicAtlas : Prop
  dimensionOne : Prop
  hyperbolicMetric : Prop
  uniformization : Prop

structure RiemannSurfaceEvidence (R : RiemannSurfacePackage) where
  holomorphicAtlasClosed : R.holomorphicAtlas
  dimensionOneClosed : R.dimensionOne
  hyperbolicMetricClosed : R.hyperbolicMetric
  uniformizationClosed : R.uniformization

def RiemannSurfaceClosed (R : RiemannSurfacePackage) : Prop :=
  R.holomorphicAtlas ∧ R.dimensionOne ∧ R.hyperbolicMetric ∧ R.uniformization

theorem riemann_surface_closed_from_evidence (R : RiemannSurfacePackage)
    (E : RiemannSurfaceEvidence R) : RiemannSurfaceClosed R := by
  exact And.intro E.holomorphicAtlasClosed
    (And.intro E.dimensionOneClosed
      (And.intro E.hyperbolicMetricClosed E.uniformizationClosed))

end ComplexSpacesTheoremCanonicalLaneLean
end HautevilleHouse