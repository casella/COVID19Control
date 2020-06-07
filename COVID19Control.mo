package COVID19Control
  extends Modelica.Icons.Package;
  
  model China "Model of China outbreak with Hubei lockdown"
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak(
      data_Nr(table =
       [ 0,   16;  1,   16;  2,   16;  3,  100;  4, 282;   5,  350;  6, 650;   7,  950;  8,  900;  9, 1090;
        10, 1460; 11, 1635; 12, 1900; 13, 2125; 14, 2630; 15, 2780; 16, 3230; 17, 3790; 18, 3660; 19, 3150;
        20, 3375; 21, 2635; 22, 3200; 23, 2900; 24, 2135]), 
      data_beta_red(table = 
       [0, 1;           0, beta_red_1; 
        5, beta_red_1;  6, beta_red_2;
        24, beta_red_2; 100, beta_red_2]), 
      R0 = 4, 
      beta0 = 1.6, 
      epsilon = 0.20, 
      delta = 0.03,
      tau_m = 11.5, 
      Ir_0 = 420);
    parameter Modelica.SIunits.PerUnit beta_red_1 = 0.63;
    parameter Modelica.SIunits.PerUnit beta_red_2 = 0.16;
    annotation(
      experiment(StartTime = 0, StopTime = 24, Tolerance = 1e-06, Interval = 0.1),
      __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end China;

  model Italy "Model of Italian outbreak"
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak(
      data_Nr(table = 
        [ 0,   58;  1,   78;  2,   72;  3,   94;  4,  147;  5,  185; 6,   234;  7, 239;   8,  573; 9,   335; 
         10,  466; 11,  587; 12,  769; 13,  778; 14, 1247; 15, 1492; 16, 1797; 17, 977;  18, 2313; 19, 2651;
         20, 2547; 21, 3497; 22, 3590; 23, 3233; 24, 3526; 25, 4207; 26, 5322; 27, 5986; 28, 6557; 29, 5560;
         30, 4789; 31, 5249; 32, 5210; 33, 6153; 34, 5959; 35, 5974; 36, 5217; 37, 4050; 38, 4053; 39, 4782;
         40, 4668; 41, 4585; 42, 4805; 43, 4316; 44, 3599; 45, 3039; 46, 3836; 47, 4204; 48, 3951; 49, 4694;
         50, 4092; 51, 3153; 52, 2972; 53, 2667; 54, 3786; 55, 3493; 56, 3491; 57, 3047; 58, 2256; 59, 2729;
         60, 3370; 61, 2646; 62, 3021; 63, 2357; 64, 2324; 65, 1739; 66, 2091; 67, 2086; 68, 1872; 69, 1965;
         70, 1900]),
      data_Ar(table = 
        [ 0,    75;  1,   152;  2,   221;  3,   310;  4,   455;  5,   593;  6,   822;  7,  1049;  8,  1577;  9,  1835;
         10,  2263; 11,  2706; 12,  3296; 13,  3916; 14,  5061; 15,  6387; 16,  7985; 17,  8514; 18, 10590; 19, 12839;
         20, 14955; 21, 17750; 22, 20603; 23, 23073; 24, 26062; 25, 28710; 26, 33190; 27, 37860; 28, 42681; 29, 46638;
         30, 50418; 31, 54030; 32, 57521; 33, 62013; 34, 66414; 35, 70065; 36, 73880; 37, 75528; 38, 77635; 39, 80572;
         40, 83049; 41, 85388; 42, 88274; 43, 91246; 44, 93187; 45, 94067; 46, 95292; 47, 96877; 48, 98273; 49,100269;
         50,102253; 51,103616; 52,104291; 53,105418; 54,106607; 55,106962; 56,107771; 57,108257; 58,108237; 59,107709;
         60,107699; 61,106848; 62,106527; 63,105847; 64,106103; 65,105813; 66,105205; 67,104657; 68,101551; 69,100943;
         70,100704]),
      data_Tr(table = 
        [ 0,    79;  1,   157;  2,   229;  3,   323;  4,   470;  5,   655;  6,   889;  7,  1128;  8,  1701;  9,  2036;
         10,  2502; 11,  3089; 12,  3858; 13,  4636; 14,  5883; 15,  7375; 16,  9172; 17, 10149; 18, 12492; 19, 15113;
         20, 17660; 21, 21157; 22, 24747; 23, 27980; 24, 31506; 25, 35713; 26, 41035; 27, 47021; 28, 53578; 29, 59138;
         30, 63927; 31, 69176; 32, 74386; 33, 80589; 34, 86498; 35, 92472; 36, 97689; 37,101739; 38,105792; 39,110574;
         40,115242; 41,119827; 42,124632; 43,128948; 44,132547; 45,135586; 46,139422; 47,143626; 48,147577; 49,152271;
         50,156363; 51,159516; 52,162488; 53,165155; 54,168941; 55,172434; 56,175925; 57,178972; 58,181228; 59,183957;
         60,187327; 61,189973; 62,192994; 63,195351; 64,197675; 65,199414; 66,201505; 67,203591; 68,205463; 69,207428;
         70,209328]),
      data_beta_red(table = 
        [0, 1;            0, 1; 
         2, 1;            2, beta_red_1;
         19, beta_red_1; 19, beta_red_2; 
         70, beta_red_2]),
      R0 = 4,
      beta0 = 1.3,
      epsilon = 0.23,
      delta = 0.030,
      tau_m = 8.5,
      Ir_0 = 67);
    parameter Modelica.SIunits.PerUnit beta_red_1 = 0.58;
    parameter Modelica.SIunits.PerUnit beta_red_2 = 0.205;
    
    annotation(
      experiment(StartTime = 0, StopTime = 70, Tolerance = 1e-06, Interval = 0.1),
      Documentation(info = "<html><head></head><body>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  0:  22/02/2020 beginning of data set </span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  2:  24/02/2020 school closed and lockdowns in Northern Italy</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"color: rgb(0, 150, 0); font-family: 'Courier New'; font-size: 12pt;\">Day 19:  12/03/2020 national lockdown</span></pre>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><br></pre></body></html>"),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Italy;

  model France
    extends Modelica.Icons.Example;
    extends BaseModels.GenericControlledOutbreak(
      data_Nr(table = 
        [ 0,   19;  1,   43;  2,   30;  3,   61;  4,   21;  5,   73; 6,   138;  7, 230;   8,  296; 9,   260; 
         10,  203; 11,  372; 12,  497; 13,  595; 14,  785; 15,  838; 16,  924; 17, 1210;  18, 1097; 19, 1404;
         20, 1861; 21, 1617; 22, 1847; 23, 1559; 24, 3838; 25, 2448; 26, 2929; 27, 3922; 28, 3809; 29, 4611;
         30, 2599; 31, 4376; 32, 7578; 33, 4861; 34, 2116; 35, 5233; 36, 4267; 37, 1873; 38, 3912; 39, 3777;
         40, 3881; 41, 4286; 42, 4342; 43, 3114; 44, 1613; 45, 2673; 46, 5497; 47, 2633; 48, 2641; 49,  405;
         50, 2569; 51,  785; 52, 2051; 53, 2667; 54, 1827; 55, 1653; 56, 1773; 57, 1537; 58,  461; 59, 3764;
         60, 1520; 61, -1417; 62,1139; 63,  604; 64,  794; 65,  308]),
      data_Ar(table = 
        [ 0,    44;  1,    86;  2,   116;  3,   176;  4,   196;  5,   269;  6,   404;  7,   632;  8,   921;  9,  1178;
         10,  1370; 11,  1739; 12,  2221; 13,  2803; 14,  3570; 15,  4396; 16,  5284; 17,  6473; 18,  6953; 19,  8268;
         20,  9328; 21, 10575; 22, 12310; 23, 13144; 24, 16796; 25, 17923; 26, 20002; 27, 22511; 28, 25269; 29, 29561;
         30, 30366; 31, 33599; 32, 39161; 33, 42022; 34, 41290; 35, 43823; 36, 45607; 37, 46217; 38, 48229; 39, 48502;
         40, 49225; 41, 50918; 42, 52547; 43, 53577; 44, 53824; 45, 55391; 46, 59039; 47, 58084; 48, 58115; 49, 56151;
         50, 56515; 51, 56310; 52, 56983; 53, 57347; 54, 57154; 55, 56860; 56, 56839; 57, 56906; 58, 56816; 59, 59533;
         60, 59313; 61, 56127; 62, 55729; 63, 55379; 64, 55657; 65, 55608]),
      data_Tr(table = 
        [ 0,    57;  1,   100;  2,   130;  3,   191;  4,   212;  5,   285;  6,   423;  7,   653;  8,   949;  9,  1209;
         10,  1412; 11,  1784; 12,  2281; 13,  2876; 14,  3661; 15,  4499; 16,  5423; 17,  6633; 18,  7730; 19,  9134;
         20, 10995; 21, 12612; 22, 14459; 23, 16018; 24, 19856; 25, 22304; 26, 25233; 27, 29155; 28, 32964; 29, 37575;
         30, 40174; 31, 44550; 32, 52128; 33, 56989; 34, 59105; 35, 64338; 36, 68605; 37, 70478; 38, 74390; 39, 78167;
         40, 82048; 41, 86334; 42, 90676; 43, 93790; 44, 95403; 45, 98076; 46,103573; 47,106206; 48,108847; 49,109252;
         50,111821; 51,112606; 52,114657; 53,117324; 54,119151; 55,120204; 56,122577; 57,124114; 58,124575; 59,128339;
         60,129859; 61,128442; 62,129581; 63,130185; 64,130979; 65,131287]),
      data_beta_red(table = 
        [0, 1;            0, 1; 
         2, 1;            2, beta_red_1;
         17, beta_red_1; 17, beta_red_2; 
         65, beta_red_2]),
      R0 = 3.8,
      beta0 = 1.3,
      epsilon = 0.20,
      delta = 0.030,
      tau_m = 12,
      Ir_0 = 45);
    parameter Modelica.SIunits.PerUnit beta_red_1 = 0.6;
    parameter Modelica.SIunits.PerUnit beta_red_2 = 0.195;
    
    annotation(
      experiment(StartTime = 0, StopTime = 65, Tolerance = 1e-06, Interval = 0.1),
      Documentation(info = "<html><head></head><body>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  0:  28</span><span style=\"color: rgb(0, 150, 0); font-family: 'Courier New'; font-size: 12pt;\">/02/2020 beginning of data set </span></pre>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 17:  16/03/2020 national lockdown</span></pre></body></html>"),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end France;
  
model UK "Model of UK outbreak"
  extends Modelica.Icons.Example;
  extends BaseModels.GenericControlledOutbreak(
    data_Nr(table = 
      [ 0,   13;  1,    3;  2,   12;  3,   36;  4,   29;  5,   48;  6,   45;  7,   68;  8,   43;  9,   62; 
       10,   77; 11,  130; 12,  208; 13,  342; 14,  251; 15,  152; 16,  407; 17,  676; 18,  643; 19,  714; 
       20, 1035; 21,  665; 22,  967; 23, 1427; 24, 1452; 25, 2129; 26, 2885; 27, 2546; 28, 2433; 29, 2619;
       30, 3009; 31, 4324; 32, 4244; 33, 4450; 34, 3735; 35, 5903; 36, 3802; 37, 3634; 38, 5491; 39, 4344;
       40, 8681; 41, 5233; 42, 5288; 43, 4342; 44, 5252; 45, 4603; 46, 4617; 47, 5599; 48, 5525; 49, 5850;
       50, 4676; 51, 4301; 52, 4451; 53, 4583; 54, 5386; 55, 4913; 56, 4463; 57, 4309; 58, 3996; 59, 4076;
       60, 6032; 61, 6201; 62, 4806; 63, 4339; 64, 3985; 65, 4406; 66, 6111; 67, 5614; 68, 4649; 69, 3896;
       70, 3923; 71, 3877]),
    data_Ar(table = 
      [ 0,    0;  100,   0]),
    data_Tr(table = 
      [ 0,    36;  1,    39;  2,    51;  3,    87;  4,   116;  5,   164;  6,   209;  7,   278;  8,   321;  9,   383;
       10,   460; 11,   590; 12,   798; 13,  1140; 14,  1391; 15,  1543; 16,  1950; 17,  2626; 18,  3269; 19,  3983;
       20,  5018; 21,  5683; 22,  6650; 23,  8077; 24,  9529; 25, 11658; 26, 14543; 27, 17089; 28, 19522; 29, 22141;
       30, 25150; 31, 29474; 32, 33718; 33, 38168; 34, 41903; 35, 47806; 36, 51608; 37, 55242; 38, 60733; 39, 65077;
       40, 73758; 41, 78991; 42, 84279; 43, 88621; 44, 93873; 45, 98476; 46,103093; 47,108692; 48,114217; 49,120067;
       50,124743; 51,129044; 52,133495; 53,138078; 54,143464; 55,148377; 56,152840; 57,157149; 58,161145; 59,165221;
       60,171253; 61,177454; 62,182260; 63,186599; 64,190584; 65,194990; 66,201101; 67,206715; 68,211364; 69,215260;
       70,219183; 71,223060]),
    data_beta_red(table = 
      [0, 1;            0, 1; 
       15,1;           15, beta_red_1;
       15, beta_red_1; 25, beta_red_2; 
       70, beta_red_2]),
    R0 = 3.6,
    beta0 = 1.28,
    epsilon = 0.16,
    delta = 0.030,
    tau_m = 11.5,
    Ir_0 = 20);
  parameter Modelica.SIunits.PerUnit beta_red_1 = 0.74;
  parameter Modelica.SIunits.PerUnit beta_red_2 = 0.28;
  
  annotation(
    experiment(StartTime = 0, StopTime = 71, Tolerance = 1e-06, Interval = 0.1),
    Documentation(info = "<html><head></head><body>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day  0:  01/03/2020 beginning of data set </span></pre>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 15:  16/03/2020 advise to avoid pubs and theaters and work from home</span></pre>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\" font-family:'Courier New'; font-size:12pt; color:#009600;\">Day 25:  26/03/2020 national lockdown</span></pre>
  <pre style=\"margin-top: 0px; margin-bottom: 0px;\"><br></pre></body></html>"),
__OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian,newInst -d=stateselection --showStructuralAnnotations ",
__OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));

end UK;

  package BaseModels
    extends Modelica.Icons.BasesPackage;
    
    partial model GenericControlledOutbreak "Generic model for the outbreak, eq (13)-(15) of the paper, including cured compartment"
      // Experimental data sources
    Modelica.Blocks.Sources.TimeTable data_Tr(table = [0, 0; 100, 0]) annotation(
        Placement(visible = true, transformation(origin = {4, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable data_Ar(table = [0, 0; 1000, 0]) "Experimental data for A_r(t)" annotation(
        Placement(visible = true, transformation(origin = {-64, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable data_Nr(table = [0, 0; 100, 0]) "Experimental data daily new reported cases" annotation(
        Placement(visible = true, transformation(origin = {-32, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable data_beta_red(table = [0, 1; 100, 1]) "Estimated reduction factor of \beta in p.u.";
      // Free parameters of the model
      parameter Real R0 "Basic reproduction number";
      parameter Real beta0 "Beta coefficient with no social restrictions";
      parameter Real epsilon "Inverse of average incubation time";
      parameter Real delta "Inverse of average recovery time for isolated infectious subjects";
      parameter Real tau_m "Total measurement delay";
      parameter Real Ir_0 "Initial value of reported infectious subjects";
    
      // Computed parameters
      final parameter Real Er_0 = beta0 * Ir_0 / (r0 + epsilon) "Initial value of reported exposed subjects";
      final parameter Real Lr_0 = gamma*Ir_0/(r0 + delta) "Initial value of isolated infectious reported subjects";
      final parameter Real gamma = beta0 / R0 "Inverse of average time to non-infectiousness";
      final parameter Real r0 = ((-(epsilon + gamma)) + sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Unstable eigenvalue when beta = beta0";
      final parameter Real p0 = ((-(epsilon + gamma)) - sqrt((epsilon + gamma) ^ 2 + 4 * epsilon * (beta0 - gamma))) / 2 "Stable eigenvalue when beta = beta0";
      final parameter Real Td0 = log(2) / r0 "Doubling time when beta = beta0";
      final parameter Real T0 = 1 / r0 "Unstable pole time constant when beta = beta0";
      final parameter Real Te0 = -1 / p0 "Stable pole time constant when beta = beta0";
    
      // Model variables
      Real Er(start = Er_0, fixed = true) "Number of estimated exposed subjects that will be reported";
      Real Ir(start = Ir_0, fixed = true) "Number of reported infectious subjects";
      Real Lr(start = Lr_0, fixed = true) "Number of infected isolated reported subjects (cannot infect others)";
      Real Tr(start = Ir_0, fixed = true) "Total number of reported cases";
      Real Ar "Number of active reported cases";
      Real Nr "Number of new daily reported cases";
      Real beta = beta0 * data_beta_red.y "Actual values of beta";
      Real beta_delayed "Delayed value of beta to take into account of tau_m";
      Real Tr_data = data_Tr.y "Total number of recorded cases - data";
      Real Ar_data = data_Ar.y "Number of daily recorded new cases - data";
      Real Nr_data = data_Nr.y "Number of daily recorded new cases - data";
    equation
      beta_delayed = delay(beta, tau_m);
      der(Er) = (-epsilon * Er) + beta_delayed * Ir;
      der(Ir) = epsilon * Er - gamma * Ir;
      der(Lr) = gamma*Ir - delta*Lr;
      der(Tr) = epsilon* Er;  
      Ar = Ir + Lr;
      Nr = epsilon*Er;
    end GenericControlledOutbreak;
  end BaseModels;
  annotation(
    uses(Modelica(version = "3.2.3")));
end COVID19Control;
