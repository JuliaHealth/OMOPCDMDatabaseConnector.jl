"""
Dispatch for LibPQ interface to DBInterface `connect` function; not supported in LibPQ.jl package currently
"""
DBInterface.connect(::Type{LibPQ.Connection}, args...; kws...) =
    LibPQ.Connection(args...; kws...)

"""
Dispatch for LibPQ interface to DBInterface `prepare` function; not supported in LibPQ.jl package currently
"""
DBInterface.prepare(conn::LibPQ.Connection, args...; kws...) =
    LibPQ.prepare(conn, args...; kws...)

"""
Dispatch for LibPQ interface to DBInterface `execute` function; not supported in LibPQ.jl package currently
"""
DBInterface.execute(conn::Union{LibPQ.Connection, LibPQ.Statement}, args...; kws...) =
    LibPQ.execute(conn, args...; kws...)
