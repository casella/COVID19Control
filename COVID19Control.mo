package COVID19Control
  extends Modelica.Icons.Package;

  model China "Model of China outbreak with Hubei lockdown"
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak(data_dIr_new(table = [0, 16; 1, 16; 2, 16; 3, 100; 4, 282; 5, 350; 6, 650; 7, 950; 8, 900; 9, 1090; 10, 1460; 11, 1635; 12, 1900; 13, 2125; 14, 2630; 15, 2780; 16, 3230; 17, 3790; 18, 3660; 19, 3150; 20, 3375; 21, 2635; 22, 3200; 23, 2900; 24, 2135]), data_beta_red(table = [0, 1; 5, 1; 6, beta_red_1; 100, beta_red_1]), R0 = 4, beta0 = 0.75, epsilon = 0.16, tau_m = 11.5, Ir_0 = 585);
    parameter Modelica.SIunits.PerUnit beta_red_1 = 0.16;
    parameter Modelica.SIunits.PerUnit beta_red_2 = 0.4;
    annotation(
      experiment(StartTime = 0, StopTime = 24, Tolerance = 1e-06, Interval = 0.1),
      __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end China;

  model LazioBoth "Model of the Lazio outbreak with both public measures"
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak(data_Ir(table = [0, 2; 1, 2; 2, 0; 3, 0; 4, 0; 5, 3; 6, 3; 7, 4; 8, 11; 9, 27; 10, 41; 11, 50; 12, 72; 13, 81; 14, 94; 15, 99; 16, 125; 17, 172; 18, 242; 19, 320; 20, 396; 21, 472; 22, 550; 23, 650; 24, 741; 25, 912; 26, 1086; 27, 1272; 28, 1414; 29, 1545; 30, 1675; 31, 1835; 32, 2013; 33, 2181; 34, 2362; 35, 2497; 36, 2642; 37, 2758; 38, 2879; 39, 3009; 40, 3106; 41, 3186; 42, 3300; 43, 3365; 44, 3448; 45, 3532; 46, 3633; 47, 3730; 48, 3817; 49, 3920; 50, 4022; 51, 4047; 52, 4144]), data_beta_red(table = [0, 1; 10, 1; 10, beta_red_1; 17, beta_red_1; 17, beta_red_2; 30, beta_red_2]), R0 = 4, beta0 = 0.95, epsilon = 0.16, tau_m = 16, Ir_0 = 7);
    parameter Real beta_red_1 = 0.50;
    parameter Real beta_red_2 = 0.33;
    annotation(
      experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.1));
  end LazioBoth;

  model LazioFirstOnly "Model of the Lazio Outbreak with first round of measures only"
    extends LazioBoth(beta_red_2 = beta_red_1);
    annotation(
      experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.1));
  end LazioFirstOnly;

  model LazioNone "Model of the Lazio oubreak without any public measure"
    extends Modelica.Icons.Example;
    extends LazioBoth(beta_red_1 = 1, beta_red_2 = 1);
    annotation(
      experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.1));
  end LazioNone;

  model Italy "Model of Italian outbreak"
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak2(
      data_dIr_new(table = 
        [ 0,  221;  1,   93;  2,   78;  3,  250;  4,  238;  5,  240; 6,   566;  7,  342;  8,  466;  9,  587;
         10,  769; 11,  778; 12, 1247; 13, 1492; 14, 1797; 15,  977; 16, 2313; 17, 2651; 18, 2547; 19, 3497;
         20, 3590; 21, 3233; 22, 3526; 23, 4207; 24, 5322; 25, 5986; 26, 6557; 27, 5560; 28, 4789; 29, 5249;
         30, 5210; 31, 6153; 32, 5959; 33, 5974; 34, 5217; 35, 4050; 36, 4053; 37, 4782; 38, 4668; 39, 4585;
         40, 4805; 41, 4316; 42, 3599; 43, 3039; 44, 3836; 45, 4204; 46, 3951; 47, 4694; 48, 4092; 49, 3153;
         50, 2972; 51, 2667; 52, 3786; 53, 3493; 54, 3491; 55, 3047; 56, 2256; 57, 2729; 58, 3370; 59, 2646;
         60, 3021; 61, 2357; 62, 2324; 63, 1739; 64, 2091; 65, 2086; 66, 1872; 67, 1965; 68, 1900; 69, 1389;
         70, 1221; 71, 1075; 72, 1444; 73, 1401; 74, 1327; 75, 1083; 76,  802; 77,  744; 78, 1402; 79,  888;
         80,  992; 81,  789; 82,  875; 83,  675; 84,  451; 100, 451]),
      data_beta_red(table = 
        [0, 1;            0, 1; 
         0, 1;            0, beta_red_1;
         17, beta_red_1; 17, beta_red_2; 
         70, beta_red_2; 70, beta_red_3;
         84, beta_red_3; 84, beta_red_4;
         120,beta_red_4; 120, beta_red_5]),
      R0 = 3.60,
      beta0 = 1.3,
      epsilon = 0.22,
      delta = 0.030,
      tau_m = 9,
      Ir_0 = 300);
    parameter Modelica.SIunits.PerUnit beta_red_1 = 0.64;
    parameter Modelica.SIunits.PerUnit beta_red_2 = 0.21;
    parameter Modelica.SIunits.PerUnit beta_red_3 = 0.30;
    parameter Modelica.SIunits.PerUnit beta_red_4 = 0.35;
    parameter Modelica.SIunits.PerUnit beta_red_5 = 0.21;
    
    annotation(
      experiment(StartTime = 0, StopTime = 200, Tolerance = 1e-06, Interval = 0.1),
      Documentation(info = "<html><head></head><body>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  0:  24/02/2020 beginning of data set </span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  0:  24/02/2020 school closed and lockdowns in Northern Italy</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 10:  05/03/2020 schools closed and public events cancelled whole country</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 17:  12/03/2020 national lockdown</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 70:  04/05/2020 partial lifting of lockdown, social distancing retained</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 150, 0);\">Day 84:  18/05/2020 further lifting of lockdown, social distancing and inter-regional travel ban retained </span></pre><div><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 150, 0);\">Day 120: 23/09/2020 second lockdown?</span></pre></div><div><span style=\"font-family: 'Courier New'; font-size: 12pt; color: rgb(0, 150, 0);\"><br></span></div></body></html>"),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Italy;

  package BaseModels
    extends Modelica.Icons.BasesPackage;

    partial model GenericControlledOutbreak "Generic model for the outbreak, eq (13)-(15) of the paper"
      // Experimental data sources
      Modelica.Blocks.Sources.TimeTable data_Ir(table = [0, 0; 1000, 0]) "Experimental data for I_r(t)" annotation(
        Placement(visible = true, transformation(origin = {-64, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable data_beta_red(table = [0, 1; 100, 1]) "Estimated reduction factor of \beta in p.u.";
      Modelica.Blocks.Sources.TimeTable data_dIr_new(table = [0, 0; 100, 0]) "Experimental data for epsilon*E_(t)" annotation(
        Placement(visible = true, transformation(origin = {-64, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      // Free parameters of the model
      parameter Real R0 "Basic reproduction number";
      parameter Real beta0 "Beta coefficient with no social restrictions";
      parameter Real epsilon "Inverse of average incubation time";
      parameter Real tau_m "Total measurement delay";
      parameter Real Ir_0 "Initial value of reported infectious subjects";
      final parameter Real Er_0 = beta0 * Ir_0 / (r0 + epsilon) "Initial value of reported exposed subjects";
      final parameter Real gamma = beta0 / R0 "Inverse of average time to non-infectiousness";
      final parameter Real r0 = ((-(epsilon + gamma)) + sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Unstable eigenvalue when beta = beta0";
      final parameter Real p0 = ((-(epsilon + gamma)) - sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Stable eigenvalue when beta = beta0";
      final parameter Real Td0 = log(2) / r0 "Doubling time when beta = beta0";
      final parameter Real T0 = 1 / r0 "Unstable pole time constant when beta = beta0";
      final parameter Real Te0 = -1 / p0 "Stable pole time constant when beta = beta0";
      Real Er(start = Er_0, fixed = true) "Number of estimated exposed subjects that will be reported";
      Real Ir(start = Ir_0, fixed = true) "Number of reported infectious subjects";
      Real Ir_tot(start = Ir_0, fixed = true) "Total number of reported infected subjects";
      Real Ir_data = data_Ir.y "Number of daily recorded new cases - data";
      Real beta = beta0 * data_beta_red.y "Actual values of beta";
      Real beta_delayed "Delayed value of beta to take into account of tau_m";
      Real dIr_new "Number of daily recorded new cases";
      Real dIr_new_data = data_dIr_new.y "Number of daily recorded new cases - data";
    equation
      der(Er) = (-epsilon * Er) + beta_delayed * Ir;
      der(Ir) = epsilon * Er - gamma * Ir;
      der(Ir_tot) = epsilon * Er;
      beta_delayed = delay(beta, tau_m);
      dIr_new = epsilon * Er;
    end GenericControlledOutbreak;
    
    partial model GenericControlledOutbreak2 "Generic model for the outbreak, eq (13)-(15) of the paper, including cured compartment"
      // Experimental data sources
      Modelica.Blocks.Sources.TimeTable data_Ir(table = [0, 0; 1000, 0]) "Experimental data for I_r(t)" annotation(
        Placement(visible = true, transformation(origin = {-64, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable data_beta_red(table = [0, 1; 100, 1]) "Estimated reduction factor of \beta in p.u.";
      Modelica.Blocks.Sources.TimeTable data_dIr_new(table = [0, 0; 100, 0]) "Experimental data for epsilon*E_(t)" annotation(
        Placement(visible = true, transformation(origin = {-64, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      // Free parameters of the model
      parameter Real R0 "Basic reproduction number";
      parameter Real beta0 "Beta coefficient with no social restrictions";
      parameter Real epsilon "Inverse of average incubation time";
      parameter Real delta "Inverse of average recovery time for cured subjects";
      parameter Real tau_m "Total measurement delay";
      parameter Real Ir_0 "Initial value of reported infectious subjects";
      final parameter Real Er_0 = beta0 * Ir_0 / (r0 + epsilon) "Initial value of reported exposed subjects";
      final parameter Real gamma = beta0 / R0 "Inverse of average time to non-infectiousness";
      final parameter Real r0 = ((-(epsilon + gamma)) + sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Unstable eigenvalue when beta = beta0";
      final parameter Real p0 = ((-(epsilon + gamma)) - sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Stable eigenvalue when beta = beta0";
      final parameter Real Td0 = log(2) / r0 "Doubling time when beta = beta0";
      final parameter Real T0 = 1 / r0 "Unstable pole time constant when beta = beta0";
      final parameter Real Te0 = -1 / p0 "Stable pole time constant when beta = beta0";
      Real Er(start = Er_0, fixed = true) "Number of estimated exposed subjects that will be reported";
      Real Ir(start = Ir_0, fixed = true) "Number of reported infectious subjects";
      Real Ir_tot(start = Ir_0, fixed = true) "Total number of reported infected subjects";
      Real Cr(start = 0, fixed = true) "Number of ill subjects under cure (cannot infect others)";
      Real Ar "Number of active cases";
      Real Ir_data = data_Ir.y "Number of daily recorded new cases - data";
      Real beta = beta0 * data_beta_red.y "Actual values of beta";
      Real beta_delayed "Delayed value of beta to take into account of tau_m";
      Real dIr_new "Number of daily recorded new cases";
      Real dIr_new_data = data_dIr_new.y "Number of daily recorded new cases - data";
    equation
      der(Er) = (-epsilon * Er) + beta_delayed * Ir;
      der(Ir) = epsilon * Er - gamma * Ir;
      der(Cr) = gamma*Ir - delta*Cr;
      Ar = Ir + Cr;
      der(Ir_tot) = epsilon * Er;
      beta_delayed = delay(beta, tau_m);
      dIr_new = epsilon * Er;
    end GenericControlledOutbreak2;
  end BaseModels;
  annotation(
    uses(Modelica(version = "3.2.3")));
end COVID19Control;
