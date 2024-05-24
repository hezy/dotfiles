# ~/.julia/config/startup.jl 
# Stack the tools environment on top of the currently active environment.
# See: https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_LOAD_PATH
# Remove the line below if you installed tools in your global environment

push!(LOAD_PATH, Base.Filesystem.homedir() * "/.julia-environments/tools/")

#ENV["EDITOR"] = "vscodium"
const PLOTS_DEFAULTS = Dict(:theme => :juno)

# Import the tools, or display a warning if something goes wrong
try
	@eval using OhMyREPL
catch e
	@warn "Error initializing OhMyREPL" exception=(e, catch_backtrace())
end

#try
#	@eval using Revise
#catch e
#	@warn "Error initializing Revise" exception=(e, catch_backtrace())
#end

#try
#	@eval using BenchmarkTools
#catch e
#	@warn "Error initializing BenchmarkTools" exception=(e, catch_backtrace())
#end

#try
#	@eval using JuliaFormatter
#catch e
#	@warn "Error initializing JuliaFormattar" exception=(e, catch_backtrace())
#end

#try
#	@eval using TheFix
#catch e
#	@warn "Error initializing TheFix" exception=(e, catch_backtrace())
#end

