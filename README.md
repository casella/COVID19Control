# COVID19Control
Validation of models for the controllability analysis of the COVID-19 epidemic

The paper "Can the COVID-19 epidemic be controlled based on daily test reports?" by Francesco Casella, available on https://arxiv.org/abs/2003.06967, proposes suitably simplified models to analyze the controllability of the COVID-19 epidemic, when the number of people that have developed immunity to the disease is a small fraction of the general population.

The COVID19Control Modelica library contains simulation models that validate the mathematical models proposed in the paper with publicly available data from different scenarios. The data are included in the simulations as table-based signal generators, so that it is possible to run the simulations and compare the model outputs with the data directly.

The models can be run with the open source OpenModelica tool https://openmodelica.org/, just start the OMEdit editor, load the COVID19Control.mo file, select the models and simulate them.
