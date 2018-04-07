# A template for transparent and reproduceable data analysis in R

### Rationale

Having organized, easily reproduceable code is critical for effective data analysis. Besides the fact that many publishers require such code for publication, having transparent analysis is important for the integrity and validity of all scientific work (duh!). 

inspired by [this](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424) paper by William Stafford Noble

### Description
The following repo contains a template for organizing projects. It is one among many possible organizational structures, but this one is intended to be as simple as possible. 


### Workflow and Organization

The basic idea is that all steps of the analysis should be scripted from start to finish so that all stages of data processing and analysis should be repeatable with a 'click of a button'. This is achieved through the `run_all.R` script which documents each script called in the pipeline.

The first thing that `run_all.R` does is create a new folder in `/outputs` named according to the date or time that `run_all.R` is invoked. This results in a global variable `outdir`. All outputs from scripts should be saved in this directory, including any derived data products used in the analysis. From experience, saving results chronologically is an effective way to organize data for later examination. 

Variables and parameters selected by the analyst should be documented in `assumptions.R`, with appropriate justification in comments. This way other people playing with your approach can see how different choices might affect outcomes without changing anytyhing else. 

Each time a substantial change is made to the project (especially assumptions.R), a commit should be made to document the trajectory of analysis. 




