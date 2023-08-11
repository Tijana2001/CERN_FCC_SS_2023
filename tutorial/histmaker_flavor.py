# list of processes (mandatory)
processList = {
#    "p8_ee_ZH_Zmumu_ecm240": {
#        "fraction": 1,
#        "crossSection": 0.201868 * 0.034,
#    },
#    "p8_ee_ZZ_mumubb_ecm240": {
#        "fraction": 1,
#       "crossSection": 2 * 1.35899 * 0.034 * 0.152,
#   },
    "p8_ee_tt_ecm365":{
        "fraction": 0.1,
        "crossSection": 0.8,
    }
}


# Production tag when running over EDM4Hep centrally produced events, this points to the yaml files for getting sample statistics (mandatory)
#prodTag = "FCCee/winter2023/IDEA/"

# Link to the dictonary that contains all the cross section informations etc... (mandatory)
procDict = "FCCee_procDict_winter2023_IDEA.json"

# Define the input dir (optional)
inputDir    = "./outputs/treemaker/flavor/"

# Optional: output directory, default is local running directory
outputDir = "./outputs/histmaker/flavor/"


# optional: ncpus, default is 4, -1 uses all cores available
nCPUS = -1

# scale the histograms with the cross-section and integrated luminosity
doScale = True
intLumi = 5000000  # 5 /ab


# define some binning for various histograms
bins_p_mu = (2000, 0, 200)  # 100 MeV bins
bins_m_ll = (400, 0, 200)  # 100 MeV bins
bins_p_ll = (400, 0, 200)  # 100 MeV bins
bins_recoil = (200000, 0, 200)  # 1 MeV bins
bins_cosThetaMiss = (1000, 0, 1)

bins_m_jj = (100, 0, 300)  # 1 GeV bins
bins_jet_p = (2000,0,200)
bins_score = (50, 0, 2.0)  
bins_n = (10, 0, 10)
bins_N = (30,0,30)  

bins_theta = (500, -5, 5)
bins_eta = (600, -3, 3)
bins_phi = (500, -5, 5)

bins_count = (50, 0, 50)
bins_charge = (10, -5, 5)
bins_iso = (500, 0, 5)


# build_graph function that contains the analysis logic, cuts and histograms (mandatory)
def build_graph(df, dataset):

    results = []
    df = df.Define("weight", "1.0")
    weightsum = df.Sum("weight")

    # #########
    # ### CUT 4: Z mass window
    # #########
    # df = df.Filter("zmumu_m > 86 && zmumu_m < 96")

    # #########
    # ### CUT 5: Z momentum
    # #########
    # df = df.Filter("zmumu_p > 20 && zmumu_p < 70")

    # #########
    # ### CUT 6: recoil mass window
    # #########
    # df = df.Filter("zmumu_recoil_m < 140 && zmumu_recoil_m > 120")

    #########
    ### CUT 7: cut on the jet tagging score to select H->bb events
    #########
    df = df.Define("scoresum_B", "recojet_isB[0] + recojet_isB[1]")
    df = df.Filter("recojet_isB[0] > 0.5 && recojet_isB[1] > 0.5")
    results.append(df.Histo1D(("scoresum_B", "", *bins_score), "scoresum_B")) 
   
  
    #df = df.Filter("scoresum_B > 1.0")

    # results.append(df.Histo1D(("zmumu_m", "", *bins_m_ll), "zmumu_m"))
    # results.append(
    #     df.Histo1D(("zmumu_recoil_m", "", *bins_recoil), "zmumu_recoil_m")
    # )
    # results.append(df.Histo1D(("zmumu_p", "", *bins_p_ll), "zmumu_p"))
    results.append(df.Histo1D(("jj_m", "", *bins_m_jj), "jj_m"))
    results.append(df.Histo1D(("ll_m", "", *bins_m_ll), "ll_m"))
    results.append(df.Histo1D(("lj_m_comb", "", *bins_m_jj), "lj_m_comb"))
    results.append(df.Histo1D(("n_jets", "", *bins_n), "n_jets"))
    results.append(df.Histo1D(("cosTheta_miss", "", *bins_cosThetaMiss), "cosTheta_miss"))
    results.append(df.Histo1D(("missing_p", "", *bins_p_ll), "missing_p",))
    results.append(df.Histo1D(("jets_n", "", *bins_N), "jets_n"))
   # results.append(df.Histo1D(("leptons_no", "", *bins_N), "leptons_no"))
    results.append(df.Histo1D(("jet1_p", "", *bins_p_ll), "jet1_p"))
    results.append(df.Histo1D(("jet2_p", "", *bins_p_ll), "jet2_p"))



   
    return results, weightsum
