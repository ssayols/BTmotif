# BTmotif

Derive Cas9 sequence determinants from BreakInspectoR output. Uses XGBoost and the full 20 bases of the protospacer (without taking into account the mismatches to the gRNA).

## Install

### Dependencies

The main dependency is [H2O](https://h2o.ai/).

Remove any previously installed H2O packages for R.

```R
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }
```

Download packages that H2O depends on.

```R
install.packages(c("RCurl","jsonlite"))
```

Download and install the H2O package for R. The models were trained on H2O version 3.36.1.2, therefore specifically install this version.

```R
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-zumbo/2/R")
```

Test the H2O installation with:

```R
library(h2o)
localH2O = h2o.init()
demo(h2o.kmeans)
```

Now, it's all set to install the package.

### Installing the package

The package resides in GitHub only. You will probably need `devtools` for that (`install.packages("devtools")`).

```R
devtools::install_github("ssayols/bluntPred")
```

## Run

Open the web app in your R console:

```R
BTmotif::shiny_BTmotif()
```

Paste a table of targets and click on `Go!`.
The list can actually be a table with \<tab\> or \<comma\> separated fields.
The columns are expected to be in this order: protospacer_sequence | blunt_rate.
