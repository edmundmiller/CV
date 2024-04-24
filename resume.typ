#import "alta-typst.typ": alta, term, skill, styled-link

// NOTE npm run start to genreate from json5
#let resume = json("resume.json")

#let publication(details) = [
     ==== #link(details.url)[#details.name]\
     #term[#details.releaseDate][#details.publisher] \
    #set text(9.8pt, font: "IBM Plex Sans")
    // #details.summary \
]

#alta(
  name: "Edmund Miller",
  links: (
    (name: "email", link: "mailto:hello@edmundmiller.dev"),
      (name: "website", link: "https://edmundmiller.dev/", display: "edmundmiller.dev"),
    (name: "github", link: "https://github.com/edmundmiller", display: "@edmundmiller"),
    (name: "linkedin", link: "https://www.linkedin.com/in/edmundmiller/", display: "Edmund Miller"),
  ),
  tagline: [PhD Candidate | nf-core Core Member],
  [
    == Experience

    === Bioinformatics Engineering Associate \
    _Element Biosciences_\
    #term[Aug 2021 --- Feb 2023][Remote]

    - Designed and created a system for internal pipelines and automating secondary analysis.
    - Gave a talk at Nextflow Summit 2022 on secondary analysis automation.
    - Contributed in converting Loop Genomics pipeline from Python and Azure API calls to Nextflow going from \$500 per sample to \$40 per sample
    - Restructured Tertiary analysis and conducted various analysis
    - Creation of TumorNormal pipeline.

    === Bioinformatics Engineering Intern \
    _Element Biosciences_\
    #term[Jun 2021 --- Aug 2021][Remote]

    - Converted Internal Whole Genome Sequencing Pipeline from Jupyter and bash scripts to Nextflow.
    - Performed variant calling for COVID‑19 AmpliSeq samples.
    - Processed 10x spatial transcriptomics data.
    - Created internal standards for Nextflow modules, MultiQC, and pipeline testing.
    - Analyzed ERCC spike‑in data.

    === Software Engineer \
    _Olypsis Technologies_\
    #term[Jun 2018 --- Jun 2020][Dallas, Tx]

    - Lead developement and design of BlockNKey completing tasks including, creating a functioning test suite for legacy code, containerizing the entire system, designing and implementing a REST API and Smart contracts for the system.
    - Created a novel ERC20 payment splitter Smart contract in Solidity for Digital Assets Foundry.
    - Developed the DAWN protocol to transfer files in a peer to peer fashion, that is decentralized and does not rely on a 3rd party to be trusted using
    - Worked with a variety of Web3 technologies including Whisper, IPFS, AES256, and React.

    // References available on request

    == Education

    === PhD - Molecular and Cell Biology \
    _University of Texas at Dallas_\
    #term[Aug 2020 --- Dec 2024][Richardson, Tx]

    === MS - Biotechnology \
    _University of Texas at Dallas_\
    #term[Aug 2018 --- Dec 2019][Richardson, Tx]

    // #lorem(10)
    - Fast‑Track Program

    === BS - Molecular Biology \
    _University of Texas at Dallas_\
    #term[Aug 2015 --- Aug 2018][Richardson, Tx]

    - Academic Excellence Scholarship 2015‑2019
    - President’s Scholarship 2016‑2017
    - Continuing Student Scholarship 2017‑2018

    == Publications

    #for pub in resume.publications [
        #publication(pub)
    ]

    #colbreak()

    == Talks

    For a list of conference talks I've given see #styled-link("https://edmundmiller.dev/speaking")[edmundmiller.dev/speaking]

    == Projects

    ==== #link("https://nf-co.re/nascent")[nf-core/nascent]

    Nascent Transcription Processing Pipeline

    ==== #link("https://github.com/edmundmiller/nextflow-mode")[nextflow-mode]

    A Emacs mode for syntax highlighting for Nextflow based on snakemake-mode.

    == Skills

    #skill("Nextflow", 5)
    #skill("Python", 5)
    #skill("Snakemake", 4)
    #skill("Rust", 3)
    #skill("Javascript", 4)
  ],
)
