import os, copy


# list of processes
processList = {
#    "p8_ee_ZH_Zmumu_ecm240": {
#        "fraction": 1,
#        "crossSection": 0.201868 * 0.034,
#    },
#    "p8_ee_ZZ_mumubb_ecm240": {
#        "fraction": 1,
#        "crossSection": 2 * 1.35899 * 0.034 * 0.152,
#    },
    "p8_ee_tt_ecm365": {
        "fraction": 0.1,
        "crossSection": 0.8,
    }
}

# Production tag when running over EDM4Hep centrally produced events, this points to the yaml files for getting sample statistics (mandatory)
prodTag     = "FCCee/winter2023/IDEA/"

#Optional: output directory, default is local running directory
outputDir   = "./outputs/treemaker/flavor/"

# Define the input dir (optional)
#inputDir    = "./localSamples/"

# additional/costom C++ functions, defined in header files (optional)
includePaths = ["functions.h"]

## latest particle transformer model, trained on 9M jets in winter2023 samples
model_name = "fccee_flavtagging_edm4hep_wc_v1"

## model files needed for unit testing in CI
url_model_dir = "https://fccsw.web.cern.ch/fccsw/testsamples/jet_flavour_tagging/winter2023/wc_pt_13_01_2022/"
url_preproc = "{}/{}.json".format(url_model_dir, model_name)
url_model = "{}/{}.onnx".format(url_model_dir, model_name)

## model files locally stored on /eos
model_dir = (
    "/eos/experiment/fcc/ee/jet_flavour_tagging/winter2023/wc_pt_13_01_2022/"
)
local_preproc = "{}/{}.json".format(model_dir, model_name)
local_model = "{}/{}.onnx".format(model_dir, model_name)

## get local file, else download from url
def get_file_path(url, filename):
    if os.path.exists(filename):
        return os.path.abspath(filename)
    else:
        urllib.request.urlretrieve(url, os.path.basename(url))
        return os.path.basename(url)


weaver_preproc = get_file_path(url_preproc, local_preproc)
weaver_model = get_file_path(url_model, local_model)

from addons.ONNXRuntime.jetFlavourHelper import JetFlavourHelper
from addons.FastJet.jetClusteringHelper import (
    ExclusiveJetClusteringHelper
)

jetFlavourHelper = None
jetClusteringHelper = None


# Mandatory: RDFanalysis class where the use defines the operations on the TTree
class RDFanalysis:

    # __________________________________________________________
    # Mandatory: analysers funtion to define the analysers to process, please make sure you return the last dataframe, in this example it is df2
    def analysers(df):

        # __________________________________________________________
        # Mandatory: analysers funtion to define the analysers to process, please make sure you return the last dataframe, in this example it is df2

        # define some aliases to be used later on
        df = df.Alias("Particle0", "Particle#0.index")
        df = df.Alias("Particle1", "Particle#1.index")
        df = df.Alias("MCRecoAssociations0", "MCRecoAssociations#0.index")
        df = df.Alias("MCRecoAssociations1", "MCRecoAssociations#1.index")
        df = df.Alias("Muon0", "Muon#0.index")
        df = df.Alias("Electron0", "Electron#0.index")


        df = df.Define("RP_px",          "ReconstructedParticle::get_px(ReconstructedParticles)")
        df = df.Define("RP_py",          "ReconstructedParticle::get_py(ReconstructedParticles)")
        df = df.Define("RP_pz",          "ReconstructedParticle::get_pz(ReconstructedParticles)")
        df = df.Define("RP_e",           "ReconstructedParticle::get_e(ReconstructedParticles)")
        df = df.Define("RP_m",           "ReconstructedParticle::get_mass(ReconstructedParticles)")
        df = df.Define("RP_q",           "ReconstructedParticle::get_charge(ReconstructedParticles)")

        df = df.Define("pseudo_jets",    "JetClusteringUtils::set_pseudoJets_xyzm(RP_px, RP_py, RP_pz, RP_m)")

        
        # get all the leptons from the collection
        df = df.Define(
            "muons",
            "FCCAnalyses::ReconstructedParticle::get(Muon0, ReconstructedParticles)",
        )
        df = df.Define(
            "electrons", 
            "ReconstructedParticle::get(Electron0, ReconstructedParticles)",        
        )
        df = df.Define("leptons_all", "ROOT::VecOps::Concatenate(electrons, muons)")
        df = df.Define("taus","FCCAnalyses::ReconstructedParticle2MC::selRP_PDG_index(15,true)(MCRecoAssociations0, MCRecoAssociations1, ReconstructedParticles, Particle)")

        # select leptons with momentum > 20 GeV
        df = df.Define(
            "leptons",
            "FCCAnalyses::ReconstructedParticle::sel_p(20)(leptons_all)",
        )
   
        df = df.Define(
            "leptons_p", "FCCAnalyses::ReconstructedParticle::get_p(leptons)"
        )
       

      

        df = df.Define(
            "leptons_theta",
            "FCCAnalyses::ReconstructedParticle::get_theta(leptons)",
        )
        df = df.Define(
            "leptons_phi",
            "FCCAnalyses::ReconstructedParticle::get_phi(leptons)",
        )
        df = df.Define(
            "leptons_q",
            "FCCAnalyses::ReconstructedParticle::get_charge(leptons)",
        )
        #number of leptons
        df = df.Define(
            "leptons_no", "FCCAnalyses::ReconstructedParticle::get_n(leptons)",
        )
        # compute the lepton isolation and store leptons with an isolation cut of 0df = df.25 in a separate column leptons_sel_iso
        df = df.Define(
            "leptons_iso",
            "FCCAnalyses::ZHfunctions::coneIsolation(0.01, 0.5)(leptons, ReconstructedParticles)",
        )
        df = df.Define(
            "leptons_sel_iso",
            "FCCAnalyses::ZHfunctions::sel_iso(0.25)(leptons, leptons_iso)",
        )
        df = df.Define(
            "leptons_p4",
            "FCCAnalyses::ReconstructedParticle::get_tlv(leptons)",
        )
       


        #########
        ### CUT 1: at least 1 lepton with at least one isolated one
        #########

        df = df.Filter("leptons_no >= 1 && leptons_sel_iso.size() > 0")
        #########
        ### CUT 2 :at least 2 opposite-sign (OS) leptons
        #########
        #df = df.Filter("leptons_no >= 2 && abs(Sum(leptons_q)) < leptons_q.size()")
       
        
        #invariant mass of two leptons
        df = df.Define(
            "ll_m",
            "FCCAnalyses::ZHfunctions::invariantMass(leptons[0],leptons[1])",
        )

        ## here cluster jets in the events but first remove leptons from the list of
        ## reconstructed particles

        ## create a new collection of reconstructed particles removing leptons with p>20
        df = df.Define(
            "ReconstructedParticlesNoMuons",
            "FCCAnalyses::ReconstructedParticle::remove(ReconstructedParticles,muons)",
        )

        df = df.Define(
            "ReconstructedParticlesNoLeptons",
            "FCCAnalyses::ReconstructedParticle::remove(ReconstructedParticlesNoMuons,electrons)",
        )
       
        ## perform inclusive jet clustering 
        #run jet clustering with all reconstructed particles. ee_genkt_algorithm, R=0.5, inclusive clustering, E-scheme
        df = df.Define("FCCAnalysesJets_ee_genkt", "JetClustering::clustering_ee_genkt(0.5, 0, 0, 0, 0, -1)(pseudo_jets)")
        #get the jets out of the struct
        df = df.Define("jets_ee_genkt",           "FCCAnalyses::JetClusteringUtils::get_pseudoJets(FCCAnalysesJets_ee_genkt)")
        #get the jets constituents out of the struct
        df = df.Define("jetconstituents_ee_genkt","JetClusteringUtils::get_constituents(FCCAnalysesJets_ee_genkt)")
        #get the number of jets
        df = df.Define("jets_n", "JetClusteringUtils::get_n(jets_ee_genkt)")
     
        ## perform N=2 jet clustering
        global jetClusteringHelper
        global jetFlavourHelper

      
        ## define jet and run clustering parameters
        ## name of collections in EDM root files
        collections = {
            "GenParticles": "Particle",
            "PFParticles": "ReconstructedParticles",
            "PFTracks": "EFlowTrack",
            "PFPhotons": "EFlowPhoton",
            "PFNeutralHadrons": "EFlowNeutralHadron",
            "TrackState": "EFlowTrack_1",
            "TrackerHits": "TrackerHits",
            "CalorimeterHits": "CalorimeterHits",
            "dNdx": "EFlowTrack_2",
            "PathLength": "EFlowTrack_L",
            "Bz": "magFieldBz",
        }

        collections_noleptons = copy.deepcopy(collections)
        collections_noleptons["PFParticles"] = "ReconstructedParticlesNoLeptons"

       
        jetClusteringHelper = ExclusiveJetClusteringHelper(
            collections_noleptons["PFParticles"], 2
        )
        df = jetClusteringHelper.define(df)



        ## define jet flavour tagging parameter

        jetFlavourHelper = JetFlavourHelper(
            collections_noleptons,
            jetClusteringHelper.jets,
            jetClusteringHelper.constituents,
        )

        ## define observables for tagger
        df = jetFlavourHelper.define(df)

        ## tagger inference
        df = jetFlavourHelper.inference(weaver_preproc, weaver_model, df)

       

        df = df.Define(
            "missingEnergy",
            "FCCAnalyses::ZHfunctions::missingEnergy(365., ReconstructedParticles)",
        )
        
        #df = df.Define("cosTheta_miss", "FCCAnalyses::get_cosTheta_miss(missingEnergy)",)
        df = df.Define(
            "cosTheta_miss",
            "FCCAnalyses::ZHfunctions::get_cosTheta_miss(MissingET)",
        )

        df = df.Define(
            "missing_p",
            "FCCAnalyses::ReconstructedParticle::get_p(MissingET)",
        )
       
        #########
        ### CUT 3: Njets = 2
        #########
        df = df.Filter("event_njet > 1")
        #number of jets
        df = df.Define("n_jets", "ReconstructedParticle::get_n(Jet)")
        #TlorentzVector of jets
        df = df.Define(
            "jets_p4",
            "JetConstituentsUtils::compute_tlv_jets({})".format(
                jetClusteringHelper.jets
            ),
        )

        df = df.Define(
             "jet1_p4",
             "jets_p4[0]",
        )
        df = df.Define(
             "jet2_p4",
             "jets_p4[1]",
        )
        #jet momentum
        df = df.Define(
             "jets_p",
             "FCCAnalyses::ReconstructedParticle::get_p(Jet)",
        )
        df = df.Define(
             "jet1_p",
             "jets_p[0]",
        )

        df = df.Define(
             "jet2_p",
             "jets_p[1]",
        )
        
        #invariant mass of two jets 
        df = df.Define(
            "jj_m",
            "JetConstituentsUtils::InvariantMass(jets_p4[0], jets_p4[1])",
        )

       
        #invariant mass of all lepton-bjet combinations 
        df = df.Define (
             "lb_m_comb",
             "FCCAnalyses::ZHfunctions::InvMass(leptons_p4, jets_p4)",
        )
        return df

    # __________________________________________________________
    # Mandatory: output function, please make sure you return the branchlist as a python list
    def output():
        branchList = [
            "cosTheta_miss",
            "missing_p",
            "jj_m",
            "jet1_p",
            "jet2_p",
            "jet1_p4",
            "jet2_p4",
            "ll_m",
            "n_jets",
            "lb_m_comb",
            "jets_n",
            "leptons_no"

            
       ]

        ##  outputs jet properties
        # branchList += jetClusteringHelper.outputBranches()

        ## outputs jet scores and constituent breakdown
        branchList += jetFlavourHelper.outputBranches()

        return branchList 
