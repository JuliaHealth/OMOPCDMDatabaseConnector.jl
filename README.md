# OMOPCDMDatabaseConnector

[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![Zulip](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://julialang.zulipchat.com/#narrow/stream/237221-biology-health-and-medicine)

Utility package to connect to databases in the OMOP CDM database

> **NOTE: WORK IN PROGRESS. API HAS NOT BEEN STABILIZED YET. EXPECT BREAKS UNTIL VERSION 1.0.0**

# Description

This is a **work in progress package** that provides utilities to connect to an OMOP CDM database.
This package works on version 5.4 of the OMOP CDM.
While documentation has not yet been set up, all functions are documented.

For questions, feel free to [start a discussion](https://github.com/JuliaHealth/OMOPCDMDatabaseConnector.jl/discussions), create an [issue](https://github.com/JuliaHealth/OMOPCDMDatabaseConnector.jl/issues), or post on [Zulip](https://github.com/JuliaHealth/OMOPCDMDatabaseConnector.jl/discussions).

# Example Usage

This assumes you have access to an OMOP CDM database set-up with PostgreSQL.

1. Add needed packages to a Julia environment as follows:

```
] add https://github.com/JuliaHealth/OMOPCDMCohortCreator.jl
] add https://github.com/JuliaHealth/OMOPCDMDatabaseConnector.jl 
] add DBInterface, LibPQ
```

2. Use the packages:

```julia
using DBInterface
using LibPQ
using OMOPCDMDatabaseConnector 
using OMOPCDMDatabaseConnector
```

3. Create a database connection:

```julia
conn = DBInterface.connect(LibPQ.Connection, "host=[your host] port=[your port] user=[your user] password=[your password]")
```

4. Generate database details:

```julia
GenerateDatabaseDetails(
    :postgresql,
    "synpuf5"
)
```

5. Generate Julia representation of database tables:

```julia
tables = GenerateTables(conn)
```

6. As an example, now run the following to get all `person_id`'s from the database:

```julia
GetDatabasePersonIDs(conn)
```

If everything worked and you got a DataFrame of `person_id`'s at the end of these steps, you are set to continue working with and interfacing with the database to build your own network study.

