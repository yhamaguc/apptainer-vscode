#! /bin/bash

#
# Usage:
# After build the image and then execute this on guest (binding host's $HOME)
#

julia -e 'import Pkg; Pkg.update()'

julia -e 'import Pkg; Pkg.add("Debugger")'
julia -e 'import Pkg; Pkg.add("JuliaInterpreter")'
julia -e 'import Pkg; Pkg.add("IJulia")'
julia -e 'import Pkg; Pkg.add("Chain")'

julia -e 'import Pkg; Pkg.add("RCall")'
julia -e 'import Pkg; Pkg.add("RDatasets")'
julia -e 'import Pkg; Pkg.add("PyCall")'

julia -e 'import Pkg; Pkg.add("PooledArrays")'
julia -e 'import Pkg; Pkg.add("OrderedCollections")'
julia -e 'import Pkg; Pkg.add("CategoricalArrays")'
julia -e 'import Pkg; Pkg.add("Missings")'

julia -e 'import Pkg; Pkg.add("DataFrames")'
julia -e 'import Pkg; Pkg.add("DataFramesMeta")'

julia -e 'import Pkg; Pkg.add("CSV")'
julia -e 'import Pkg; Pkg.add("HTTP")'
julia -e 'import Pkg; Pkg.add("DocOpt")'
julia -e 'import Pkg; Pkg.add("Glob")'

julia -e 'import Pkg; Pkg.add("BioAlignments")'
julia -e 'import Pkg; Pkg.add("BioSequences")'
julia -e 'import Pkg; Pkg.add("XAM")'
julia -e 'import Pkg; Pkg.add("FASTX")'
julia -e 'import Pkg; Pkg.add("Statistics")'
julia -e 'import Pkg; Pkg.add("CodecZlib")'

julia -e 'import Pkg; Pkg.add("PlotlyJS")'
julia -e 'import Pkg; Pkg.add("PlotlyBase")'
julia -e 'import Pkg; Pkg.add("PythonPlot")'
julia -e 'import Pkg; Pkg.add("Plots")'
julia -e 'import Pkg; Pkg.add("StatsPlots")'
julia -e 'import Pkg; Pkg.add("GraphRecipes")'
julia -e 'import Pkg; Pkg.add("ColorSchemes")'

julia -e 'import Pkg; Pkg.add("TSne")'
julia -e 'import Pkg; Pkg.add("UMAP")'

julia -e 'import Pkg; Pkg.add("StatsBase")'
julia -e 'import Pkg; Pkg.add("JLD2")'

julia -e 'import Pkg; Pkg.add("GraphRecipes")'
