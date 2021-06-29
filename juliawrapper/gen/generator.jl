using Clang.Generators
using Clang.Generators.JLLEnvs

cd(@__DIR__)
root_dir = joinpath(@__DIR__, "..", "..") |> normpath
root_include_dir = joinpath(root_dir, "include")
Util_dir = joinpath(root_dir, "Util")
Util_dir_include_dir = joinpath(Util_dir, "include")
HDFEOS5_include_dir = joinpath(root_dir, "win32", "HDF-EOS5Includes")
netcdf_include_dir = joinpath(root_dir, "win64", "netcdf_4.7.4", "include")
MisrUtil_h = joinpath(Util_dir_include_dir, "MisrUtil.h")

for target in JLLEnvs.JLL_ENV_TRIPLES
    @info "processing $target"

    # programmatically add options
    options = Dict{String,Any}("general" => Dict{String,Any}())
    general = options["general"]
    general["library_name"] = "mtklib"
    general["output_file_path"] = joinpath(@__DIR__, "..", "lib", "$target.jl")
    general["use_julia_native_enum_type"] = true
    general["use_deterministic_symbol"] = true
    general["printer_blacklist"] = [
        "MTKd_DataType",
        "LEAP_SECONDS",
        "MTKT_DATABUFFER_INIT",
        "MTKT_DATABUFFER3D_INIT",
        "MTKd_DataSize",
        ]

    args = get_default_args(target)
    push!(args, "-isystem$root_include_dir")
    push!(args, "-isystem$Util_dir_include_dir")
    push!(args, "-isystem$HDFEOS5_include_dir")
    push!(args, "-isystem$netcdf_include_dir")

    ctx = create_context(MisrUtil_h, args, options)

    build!(ctx)
end
