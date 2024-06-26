#import "./alta-typst.typ": alta, term, skill, styled-link

// NOTE npm run start to genreate from json5
// #let resume = json("resume.json")

#let publication(details) = [
  ==== #link(details.url)[#details.name]\
  #term[#details.releaseDate][#details.publisher] \
  #set text(9.8pt, font: "IBM Plex Sans")
  // #details.summary \
]

#let talks(details) = [
  ===== #link(details.href)[#details.title]\
  #details.event\
  // [#details.date] \
  #set text(9.8pt, font: "IBM Plex Sans")
  // #details.summary \
]

#alta(
  name: "Edmund Miller", links: (
    (name: "email", link: "mailto:hello@edmundmiller.dev"), (
      name: "website", link: "https://edmundmiller.dev/", display: "edmundmiller.dev",
    ), (
      name: "github", link: "https://github.com/edmundmiller", display: "@edmundmiller",
    ), (
      name: "linkedin", link: "https://www.linkedin.com/in/edmundmiller/", display: "Edmund Miller",
    ),
  ), tagline: [PhD Candidate | nf-core Core Member], [
    == Experience

    === Bioinformatics Engineering Associate\
    _Element Biosciences_\
    #term[Aug 2021 --- Feb 2023][Remote]

    - Designed and created a system for internal pipelines and automating secondary
      analysis.
    // - Gave a talk at Nextflow Summit 2022 on secondary analysis automation.
    - Contributed in converting Loop Genomics pipeline from Python and Azure API calls
      to Nextflow reducing cost from \$500 per sample to \$40 per sample.
    - Restructured tertiary analysis.
    // - Creation of TumorNormal pipeline.

    === Bioinformatics Engineering Intern\
    _Element Biosciences_\
    #term[Jun 2021 --- Aug 2021][Remote]

    - Converted the internal whole genome sequencing pipeline from former Jupyter
      notebooks and bash scripts to Nextflow.
    - Performed variant calling for COVID‑19 AmpliSeq samples.
    - Processed 10x spatial transcriptomics data.
    - Created internal standards for Nextflow modules, MultiQC, and pipeline testing.
    - Analyzed ERCC spike‑in data.

    === Software Engineer\
    _Olypsis Technologies_\
    #term[Jun 2018 --- Jun 2020][Dallas, Tx]

    - Lead developement and design of BlockNKey completing tasks such as created the
      functioning test suite for legacy code, containerized the entire system,
      designed and implemented a REST API and smart contracts for the system.
    - Created a novel ERC20 payment splitter smart contract in Solidity for Digital
      Assets Foundry.
    - Developed the decentralized DAWN protocol to transfer files in a peer to peer
      fashion, eliminating the need for a 3rd party in the transaction.
    - Worked with a variety of Web3 technologies including Whisper, IPFS, AES256, and
      React.

    // References available on request

    == Education

    === PhD - Molecular and Cell Biology\
    _University of Texas at Dallas_\
    #term[Aug 2020 --- Dec 2024][Richardson, Tx]

    - Designed and taught the _Applied Genomics_ course during summer semesters, which
      is now a required course for the Genomics Certificate.
    // - Fall 2021 - TA for Genes to Genomes
    // - Spring and Fall 2022 - TA for Intro to Biology
    // - Spring 2023 - TA for Introductory Biology Lab
    // - Fall 2020 ‑ Spring 2021 ‑ TA for Biochemistry I

    #colbreak()

    === MS - Biotechnology\
    _University of Texas at Dallas_\
    #term[Aug 2018 --- Dec 2019][Richardson, Tx]

    // #lorem(10)
    // - Fast‑Track Program

    === BS - Molecular Biology\
    _University of Texas at Dallas_\
    #term[Aug 2015 --- Aug 2018][Richardson, Tx]

    - Academic Excellence Scholarship 2015‑2019
    - President’s Scholarship 2016‑2017
    - Continuing Student Scholarship 2017‑2018

    == Publications

    // FIXME
    // #for pub in resume.publications [
    //   #publication(pub)
    // ]
    //

    == Speaking
    #set text(size: 9pt)
    #set list(tight: true)
    ==== Nextflow Summit
    - #styled-link(
        "https://summit.nextflow.io/2022/program/oct-14-workflow-automation-using-the-aviti-benchtop-sequencing-system-and-nextflow-tower/",
      )[Workflow automation: Using the Aviti benchtop sequencing system and Nextflow
        Tower] - Oct 2022
    - #styled-link(
        "https://youtu.be/XuoIH5mYsZE?si=wmkZTqoucrez_VmH",
      )[nf-test at nf-core: empowering scalable and streamlined testing] - Oct 2023
    - #styled-link(
        "https://summit.nextflow.io/boston/agenda/summit/nov-29-database-uses/",
      )[Nextflow and database uses: powering data engineering, exploring DuckDB, and
        beyond] - Nov 2023

    ==== Juliacon
    - #styled-link(
        "https://www.youtube.com/watch?v=Q9eYgwvJfWE&pp",
      )[Exploring the State of Machine Learning for Biological Data] - July 2023
    - #styled-link(
        "https://www.youtube.com/watch?v=egWrDz6RDRs",
      )[Unlocking the Power of Genomic Analysis in Julia] - July 2023
    ==== nf-core/bytesize
    - #styled-link("https://www.youtube.com/watch?v=K9B7JRkMpQ4")[nf-test] - Jul 2023
    - #styled-link("https://www.youtube.com/watch?v=chayGGPTnfM")[nascent] - Nov 2022
    - #styled-link(
        "https://www.youtube.com/watch?v=pjhscKyWH74",
      )[Pytest-workflow/Github actions] - Jun 2021

    // ==== Outreach

    // ====== Using nf-core to create Nextflow workflows
    // _Bioinformatics Regional Resource_
    // ====== Intro to Biotech
    // _Boston Debate League_
    #set text(size: 9.8pt)

    == Projects

    ==== #link("https://nf-co.re/nascent")[nf-core/nascent]

    Nascent Transcription Processing Pipeline

    ==== #link("https://github.com/edmundmiller/nextflow-mode")[nextflow-mode]

    A Emacs mode for syntax highlighting for Nextflow based on snakemake-mode.

    // == Skills

    // #skill("Nextflow", 5)
    // #skill("Python", 5)
    // #skill("Snakemake", 4)
    // #skill("Rust", 3)
    // #skill("Javascript", 4)
  ],
)
