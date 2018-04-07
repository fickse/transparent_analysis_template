# Project Title:
#
# Project Author (s):
#
# Project Description:

# load assumptions
source('assumptions.R')

# outputs directory
# For each invocation of run_all.R, create a new directory and store all results there
now <- Sys.time()

# output directory name
    
	# daily
    # dname <- paste0( 'run_', strftime(now, format = "%Y%m%d"))
    
	# sub-daily outputs
    dname <- paste0( 'run_', strftime(now, format = '%Y%m%d%H%M%S'))

outdir <- file.path( 'outputs', dname )
dir.create(outdir)
dir.create(file.path(outdir,'tables'))
dir.create(file.path(outdir,'figures'))

# view assumptions / parameters
print(ls.str())

# 1. compile data

# e.g source('code/00_add_data.R')

# 2. summary tables and figures

# e.g source('code/01_summary.R')

# 3. Analyses 

# e.g source('code/02_analysis_1.R')