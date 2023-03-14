# Mediation vs. Confounding

Trying to understand mediation, and mediation vs. confounding.

## Mediation

The basic idea is that if we are regressing $y$ on variable of interest $x$, and control variable $z$, if we introduce mediator $m$, the $\beta_{xy}$ coefficient should change. Additionally, $\beta_{xm} \times \beta_{my}$ should be statistically significant.[^bootstrap]

[^bootstrap]: The statistical significance of this quantity may need to be calculated with bootstrapping.

![mediation](mediation.png)

## Mediation vs. Common Cause vs. Correlated Predictors

As far as I know, all of the relationships detailed below would result in similar patterns of correlations. As far as I know there would be no empirical way to distinguish between these relationships. Only theory, or knowledge of prior relationships could be used to distinguish between these possible explanations for correlated $z$, $x$, $m$ and $y$.

![mediation vs. confounding](mediation-vs-confounding.png)
