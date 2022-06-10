using UnfoldDRE
using Documenter

DocMeta.setdocmeta!(UnfoldDRE, :DocTestSetup, :(using UnfoldDRE); recursive=true)

makedocs(;
    modules=[UnfoldDRE],
    authors="Anmol Jain, Benedikt Ehinger",
    repo="https://github.com/behinger/UnfoldDRE.jl/blob/{commit}{path}#{line}",
    sitename="UnfoldDRE.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://behinger.github.io/UnfoldDRE.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/behinger/UnfoldDRE.jl",
    devbranch="main",
)
