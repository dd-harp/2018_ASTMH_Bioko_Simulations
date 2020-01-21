Documents and code associated with the presentations made for associated satellite meetings for BIMEP and Sanaria at ASTMH in 2018.

Note that the simulation software itself has been updated to no longer run only in R, meaning that repeating this analysis would be unnecessarily time consuming and tedious - what's important here is the files used for analyzing the 2015-2017 data. This is the first generation for the full-island Bioko Island simulation modeling. It includes a few kludges made for convenience, namely simulating each patch individually in parallel under the assumption that visitors to patches contribute negligibly to onward transmission.

An inventory of scripts and other documents:
  * BiokoIsland_RMSpatial_ModelAlignment.Rmd - an RMarkdown notebook outlining how the Bioko Island model from 2018 is formulated (accompanying files: TaR_schematic.jpg)
  * Bioko_EIR_Surface_Aggregator.R - experimenting with how to take MIS and producing EIR/FOI surfaces for calibrating the simulation; in the end the 2018 simulations used the first method (TAR.1) and none of the others that were proposed.

  * Bioko_Island_Simulation_Setup.R - run this script to preprocess all of the data using `source`, to plug into the subsequent simulations
  * bi_macro_calibration.R - Setting up a simulation for calibration
  * Mapping_example_code.R - example of visualizing Bioko Island
  * Multipatch_data_transform.R - a very complicated script defining functions for postprocessing
  * Multipatch_postprocessing - contains an explanation for how Multipatch_data_transform.R works
  * BI_n_patch_trial.R - Simulating n patches simultaneously on Bioko Island


All data files will be stored on the Malaria Modeling Team's space on the IHME drives - `/ihme/malaria_modeling/data/BIMEP_2018_Data`

An inventory of required data files:
  * BI_sim_setup_data/areadata.csv - includes raw MIS data from 2015-2017
  * BI_sim_setup_data/data_area.csv - includes pfpr surface data, indexed by areaId - ignore the other columns - this is the older version, first seen in 2017
  * BI_sim_setup_data/pfpr_trave.csv - includes pfpr surface data, travel probability, pfpr conditioning on travel, etc - all from the NComms paper - first seen in 2018, produced by Carlos
  * BI_sim_setup_data/travel_times - estimated travel time from one areaId to another, arranged in matrix form
  * BI_sim_setup_data/bioko_areas.csv - population, indexed by areaId and lat/long coordinates
  * BI_sim_setup_data/summaries.csv - travel survey data, aggregated from 2015-2017
  * Bioko_EIR_Surfaces - outputs produced by Bioko_EIR_Surface_Aggregator.R, used for Bioko Island, in the 2018 simulations, from Bioko_EIR_Surface_Aggregator.R
  * BI_maps - shapefiles for the island and for the pixel map-areas
