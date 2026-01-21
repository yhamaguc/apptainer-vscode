#! /bin/bash

# NOTE: Build the image and run this on the guest (binding host $HOME)

julia << EOF
import Pkg
Pkg.update()

packages = [
    "Debugger",
    "JuliaInterpreter",
    "IJulia",
    "Chain",
    "RCall",
    "RDatasets",
    "PyCall",
    "PooledArrays",
    "OrderedCollections",
    "CategoricalArrays",
    "Missings",
    "DataFrames",
    "DataFramesMeta",
    "CSV",
    "HTTP",
    "DocOpt",
    "Glob",
    "BioAlignments",
    "BioSequences",
    "XAM",
    "FASTX",
    "Statistics",
    "CodecZlib",
    "PlotlyJS",
    "PlotlyBase",
    "PythonPlot",
    "Plots",
    "StatsPlots",
    "GraphRecipes",
    "ColorSchemes",
    "TSne",
    "UMAP",
    "StatsBase",
    "JLD2",
]

Pkg.add(packages)
Pkg.precompile()
EOF