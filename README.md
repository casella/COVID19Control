# COVID19Control
Validation of models for the controllability analysis of the COVID-19 epidemic

The paper "Can the COVID-19 epidemic be controlled based on daily test reports?" by Francesco Casella, available on https://arxiv.org/abs/2003.06967, proposes suitably simplified models to analyze the controllability of the COVID-19 epidemic, when the number of people that have developed immunity to the disease is a small fraction of the general population.

The COVID19Control Modelica library contains simulation models that validate the mathematical models proposed in the paper with publicly available data from different scenarios. The data are included in the simulations as table-based signal generators, so that it is possible to run the simulations and compare the model outputs with the data directly.

As explained in the paper, the simulation model applies the time delay on the system input, instead of the system outputs. The input-output response is the same, but of course all the state variables are delayed with respect to what they would be in real life.

The models can be run with the open source OpenModelica tool https://openmodelica.org/. The tool is available for Windows, Linux and MacOS. To reproduce the results, install the latest official release of the tool, start the OMEdit editor, load the COVID19Control.mo file, expand the COVID19Control library in the Libraries Browser, go to the Modelling tab, select the model you want to simulate and click on the green arrow button to run the simulation. From the Plotting tab, click on the New Plot Window button and select the variables of your interest from the Variables Browser to display them.
