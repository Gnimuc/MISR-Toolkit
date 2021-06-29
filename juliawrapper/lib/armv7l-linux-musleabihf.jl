@enum MTKt_boolean::UInt32 begin
    MTK_FALSE = 0
    MTK_TRUE = 1
end

@enum MTKt_status::UInt32 begin
    MTK_SUCCESS = 0
    MTK_FAILURE = 1
    MTK_OUTBOUNDS = 2
    MTK_BAD_ARGUMENT = 3
    MTK_NOT_FOUND = 4
    MTK_FILE_NOT_FOUND = 5
    MTK_FILE_OPEN = 6
    MTK_NULLPTR = 7
    MTK_DIMENSION_MISMATCH = 8
    MTK_DATATYPE_MISMATCH = 9
    MTK_MALLOC_FAILED = 10
    MTK_CALLOC_FAILED = 11
    MTK_REALLOC_FAILED = 12
    MTK_GCTP_FORWARD_INIT_FAILED = 13
    MTK_GCTP_INVERSE_INIT_FAILED = 14
    MTK_GCTP_FORWARD_PROJ_FAILED = 15
    MTK_GCTP_INVERSE_PROJ_FAILED = 16
    MTK_MISR_PROJ_INIT_FAILED = 17
    MTK_MISR_FORWARD_PROJ_FAILED = 18
    MTK_MISR_INVERSE_PROJ_FAILED = 19
    MTK_HDF_OPEN_FAILED = 20
    MTK_HDF_ATTACH_FAILED = 21
    MTK_HDF_SDSTART_FAILED = 22
    MTK_HDF_SDEND_FAILED = 23
    MTK_HDF_SDFILEINFO_FAILED = 24
    MTK_HDF_SDFINDATTR_FAILED = 25
    MTK_HDF_SDREADATTR_FAILED = 26
    MTK_HDF_SDATTRINFO_FAILED = 27
    MTK_HDF_HDFCLOSE_FAILED = 28
    MTK_HDF_HDFOPEN_FAILED = 29
    MTK_HDF_VEND_FAILED = 30
    MTK_HDF_VFFIELDORDER_FAILED = 31
    MTK_HDF_VFFIELDTYPE_FAILED = 32
    MTK_HDF_VFNFIELDS_FAILED = 33
    MTK_HDF_VSATTACH_FAILED = 34
    MTK_HDF_VSDETACH_FAILED = 35
    MTK_HDF_VSELTS_FAILED = 36
    MTK_HDF_VSFIND_FAILED = 37
    MTK_HDF_VSFINDEX_FAILED = 38
    MTK_HDF_VSGETFIELDS_FAILED = 39
    MTK_HDF_VSGETNAME_FAILED = 40
    MTK_HDF_VSREAD_FAILED = 41
    MTK_HDF_VSSETFIELDS_FAILED = 42
    MTK_HDF_VSSIZEOF_FAILED = 43
    MTK_HDF_VSTART_FAILED = 44
    MTK_HDFEOS_GDOPEN_FAILED = 45
    MTK_HDFEOS_GDCLOSE_FAILED = 46
    MTK_HDFEOS_GDATTACH_FAILED = 47
    MTK_HDFEOS_GDDETACH_FAILED = 48
    MTK_HDFEOS_GDINQATTRS_FAILED = 49
    MTK_HDFEOS_GDINQGRID_FAILED = 50
    MTK_HDFEOS_GDINQFIELDS_FAILED = 51
    MTK_HDFEOS_GDNENTRIES_FAILED = 52
    MTK_HDFEOS_GDREADATTR_FAILED = 53
    MTK_HDFEOS_GDATTRINFO_FAILED = 54
    MTK_HDFEOS_GDFIELDINFO_FAILED = 55
    MTK_HDFEOS_GDDIMINFO_FAILED = 56
    MTK_HDFEOS_GDREADFIELD_FAILED = 57
    MTK_HDFEOS_GDGETFILLVALUE_FAILED = 58
    MTK_HDFEOS_GDPROJINFO_FAILED = 59
    MTK_HDFEOS_GDGRIDINFO_FAILED = 60
    MTK_HDFEOS_EHIDINFO_FAILED = 61
    MTK_NETCDF_OPEN_FAILED = 62
    MTK_NETCDF_READ_FAILED = 63
    MTK_NETCDF_CLOSE_FAILED = 64
    MTK_FILETYPE_NOT_SUPPORTED = 65
    MTK_DATATYPE_NOT_SUPPORTED = 66
    MTK_INVALID_FILE = 67
    MTK_INVALID_GRID = 68
    MTK_INVALID_FIELD = 69
    MTK_INVALID_FIELD_DIMENSION = 70
    MTK_MISSING_FIELD_DIMENSION = 71
    MTK_EXTRA_FIELD_DIMENSION = 72
    MTK_DIV_BY_ZERO = 73
    MTK_INVALID_ERROR_CODE = 74
end

const u_int64_t = Culonglong

const u_int8_t = Cuchar

const u_int16_t = Cushort

const u_int32_t = Cuint

@enum MTKt_DataType::UInt32 begin
    MTKe_void = 0
    MTKe_char8 = 1
    MTKe_uchar8 = 2
    MTKe_int8 = 3
    MTKe_uint8 = 4
    MTKe_int16 = 5
    MTKe_uint16 = 6
    MTKe_int32 = 7
    MTKe_uint32 = 8
    MTKe_int64 = 9
    MTKe_uint64 = 10
    MTKe_float = 11
    MTKe_double = 12
end

const MTKt_char8 = Cchar

const MTKt_uchar8 = Cuchar

const MTKt_int8 = Int8

const MTKt_uint8 = u_int8_t

const MTKt_int16 = Int16

const MTKt_uint16 = u_int16_t

const MTKt_int32 = Int32

const MTKt_uint32 = u_int32_t

const MTKt_int64 = Int64

const MTKt_uint64 = u_int64_t

const MTKt_float = Cfloat

const MTKt_double = Cdouble

struct MTKt_DataBufferType
    data::NTuple{4, UInt8}
end

function Base.getproperty(x::Ptr{MTKt_DataBufferType}, f::Symbol)
    f === :v && return Ptr{Ptr{Ptr{Cvoid}}}(x + 0)
    f === :c8 && return Ptr{Ptr{Ptr{MTKt_char8}}}(x + 0)
    f === :uc8 && return Ptr{Ptr{Ptr{MTKt_uchar8}}}(x + 0)
    f === :i8 && return Ptr{Ptr{Ptr{MTKt_int8}}}(x + 0)
    f === :u8 && return Ptr{Ptr{Ptr{MTKt_uint8}}}(x + 0)
    f === :i16 && return Ptr{Ptr{Ptr{MTKt_int16}}}(x + 0)
    f === :u16 && return Ptr{Ptr{Ptr{MTKt_uint16}}}(x + 0)
    f === :i32 && return Ptr{Ptr{Ptr{MTKt_int32}}}(x + 0)
    f === :u32 && return Ptr{Ptr{Ptr{MTKt_uint32}}}(x + 0)
    f === :i64 && return Ptr{Ptr{Ptr{MTKt_int64}}}(x + 0)
    f === :u64 && return Ptr{Ptr{Ptr{MTKt_uint64}}}(x + 0)
    f === :f && return Ptr{Ptr{Ptr{MTKt_float}}}(x + 0)
    f === :d && return Ptr{Ptr{Ptr{MTKt_double}}}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::MTKt_DataBufferType, f::Symbol)
    r = Ref{MTKt_DataBufferType}(x)
    ptr = Base.unsafe_convert(Ptr{MTKt_DataBufferType}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{MTKt_DataBufferType}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct MTKt_DataBuffer
    nline::Cint
    nsample::Cint
    datasize::Cint
    datatype::MTKt_DataType
    imported::MTKt_boolean
    data::MTKt_DataBufferType
    vdata::Ptr{Ptr{Cvoid}}
    dataptr::Ptr{Cvoid}
end

struct MTKt_DataBufferType3D
    data::NTuple{4, UInt8}
end

function Base.getproperty(x::Ptr{MTKt_DataBufferType3D}, f::Symbol)
    f === :v && return Ptr{Ptr{Ptr{Ptr{Cvoid}}}}(x + 0)
    f === :c8 && return Ptr{Ptr{Ptr{Ptr{MTKt_char8}}}}(x + 0)
    f === :uc8 && return Ptr{Ptr{Ptr{Ptr{MTKt_uchar8}}}}(x + 0)
    f === :i8 && return Ptr{Ptr{Ptr{Ptr{MTKt_int8}}}}(x + 0)
    f === :u8 && return Ptr{Ptr{Ptr{Ptr{MTKt_uint8}}}}(x + 0)
    f === :i16 && return Ptr{Ptr{Ptr{Ptr{MTKt_int16}}}}(x + 0)
    f === :u16 && return Ptr{Ptr{Ptr{Ptr{MTKt_uint16}}}}(x + 0)
    f === :i32 && return Ptr{Ptr{Ptr{Ptr{MTKt_int32}}}}(x + 0)
    f === :u32 && return Ptr{Ptr{Ptr{Ptr{MTKt_uint32}}}}(x + 0)
    f === :i64 && return Ptr{Ptr{Ptr{Ptr{MTKt_int64}}}}(x + 0)
    f === :u64 && return Ptr{Ptr{Ptr{Ptr{MTKt_uint64}}}}(x + 0)
    f === :f && return Ptr{Ptr{Ptr{Ptr{MTKt_float}}}}(x + 0)
    f === :d && return Ptr{Ptr{Ptr{Ptr{MTKt_double}}}}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::MTKt_DataBufferType3D, f::Symbol)
    r = Ref{MTKt_DataBufferType3D}(x)
    ptr = Base.unsafe_convert(Ptr{MTKt_DataBufferType3D}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{MTKt_DataBufferType3D}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct MTKt_DataBuffer3D
    nblock::Cint
    nline::Cint
    nsample::Cint
    datasize::Cint
    datatype::MTKt_DataType
    data::MTKt_DataBufferType3D
    vdata::Ptr{Ptr{Ptr{Cvoid}}}
    dataptr::Ptr{Cvoid}
end

function MtkDataBufferAllocate(nline, nsample, datatype, databuf)
    ccall((:MtkDataBufferAllocate, mtklib), MTKt_status, (Cint, Cint, MTKt_DataType, Ptr{MTKt_DataBuffer}), nline, nsample, datatype, databuf)
end

function MtkDataBufferAllocate3D(nblock, nline, nsample, datatype, databuf)
    ccall((:MtkDataBufferAllocate3D, mtklib), MTKt_status, (Cint, Cint, Cint, MTKt_DataType, Ptr{MTKt_DataBuffer3D}), nblock, nline, nsample, datatype, databuf)
end

function MtkDataBufferFree(databuf)
    ccall((:MtkDataBufferFree, mtklib), MTKt_status, (Ptr{MTKt_DataBuffer},), databuf)
end

function MtkDataBufferFree3D(databuf)
    ccall((:MtkDataBufferFree3D, mtklib), MTKt_status, (Ptr{MTKt_DataBuffer3D},), databuf)
end

function MtkDataBufferImport(nline, nsample, datatype, dataptr, databuf)
    ccall((:MtkDataBufferImport, mtklib), MTKt_status, (Cint, Cint, MTKt_DataType, Ptr{Cvoid}, Ptr{MTKt_DataBuffer}), nline, nsample, datatype, dataptr, databuf)
end

function MtkHdfToMtkDataTypeConvert(hdf_datatype, datatype)
    ccall((:MtkHdfToMtkDataTypeConvert, mtklib), MTKt_status, (Cint, Ptr{MTKt_DataType}), hdf_datatype, datatype)
end

function MtkNcToMtkDataTypeConvert(nc_datatype, datatype)
    ccall((:MtkNcToMtkDataTypeConvert, mtklib), MTKt_status, (Cint, Ptr{MTKt_DataType}), nc_datatype, datatype)
end

function MtkParseFieldname(fieldname, basefieldname, ndim, dimlist)
    ccall((:MtkParseFieldname, mtklib), MTKt_status, (Ptr{Cchar}, Ptr{Ptr{Cchar}}, Ptr{Cint}, Ptr{Ptr{Cint}}), fieldname, basefieldname, ndim, dimlist)
end

function MtkStringListFree(strcnt, strlist)
    ccall((:MtkStringListFree, mtklib), MTKt_status, (Cint, Ptr{Ptr{Ptr{Cchar}}}), strcnt, strlist)
end

function MtkCalToJulian(y, m, d, h, mn, s, julian)
    ccall((:MtkCalToJulian, mtklib), MTKt_status, (Cint, Cint, Cint, Cint, Cint, Cint, Ptr{Cdouble}), y, m, d, h, mn, s, julian)
end

function MtkJulianToCal(jd, year, month, day, hour, min, sec)
    ccall((:MtkJulianToCal, mtklib), MTKt_status, (Cdouble, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), jd, year, month, day, hour, min, sec)
end

function MtkDateTimeToJulian(datetime, jd)
    ccall((:MtkDateTimeToJulian, mtklib), MTKt_status, (Ptr{Cchar}, Ptr{Cdouble}), datetime, jd)
end

function MtkJulianToDateTime(jd, datetime)
    ccall((:MtkJulianToDateTime, mtklib), MTKt_status, (Cdouble, Ptr{Cchar}), jd, datetime)
end

function MtkTaiJdToTai(jdTAI, secTAI93)
    ccall((:MtkTaiJdToTai, mtklib), MTKt_status, (Ptr{Cdouble}, Ptr{Cdouble}), jdTAI, secTAI93)
end

function MtkTaiJdToUtcJd(jdTAI, jdUTC)
    ccall((:MtkTaiJdToUtcJd, mtklib), MTKt_status, (Ptr{Cdouble}, Ptr{Cdouble}), jdTAI, jdUTC)
end

function MtkTaiToTaiJd(secTAI93, jdTAI)
    ccall((:MtkTaiToTaiJd, mtklib), MTKt_status, (Cdouble, Ptr{Cdouble}), secTAI93, jdTAI)
end

function MtkTaiToUtc(secTAI93, utc_datetime)
    ccall((:MtkTaiToUtc, mtklib), MTKt_status, (Cdouble, Ptr{Cchar}), secTAI93, utc_datetime)
end

function MtkUtcJdToTaiJd(jdUTC, jdTAI)
    ccall((:MtkUtcJdToTaiJd, mtklib), MTKt_status, (Ptr{Cdouble}, Ptr{Cdouble}), jdUTC, jdTAI)
end

function MtkUtcJdToUtc(jdUTCin, utc_datetime)
    ccall((:MtkUtcJdToUtc, mtklib), MTKt_status, (Ptr{Cdouble}, Ptr{Cchar}), jdUTCin, utc_datetime)
end

function MtkUtcToTai(utc_datetime, secTAI93)
    ccall((:MtkUtcToTai, mtklib), MTKt_status, (Ptr{Cchar}, Ptr{Cdouble}), utc_datetime, secTAI93)
end

function MtkUtcToUtcJd(utc_datetime, jdUTC)
    ccall((:MtkUtcToUtcJd, mtklib), MTKt_status, (Ptr{Cchar}, Ptr{Cdouble}), utc_datetime, jdUTC)
end

struct MTKt_ncvarid
    gid::Cint
    varid::Cint
end

function MtkNCVarId(Ncid, Name, Var)
    ccall((:MtkNCVarId, mtklib), MTKt_status, (Cint, Ptr{Cchar}, Ptr{MTKt_ncvarid}), Ncid, Name, Var)
end

function MtkVersion()
    ccall((:MtkVersion, mtklib), Ptr{Cchar}, ())
end

const MAXDIMS = 10

const MAXSTR = 80

const MTKd_NDATATYPE = 13

const EPOCH_DAY = 2.4489885e6

const EPOCH_DAY_FRACTION = 0.0003125

const SECONDSperDAY = 86400.0

const SECONDSperHOUR = 3600.0

const SECONDSperMINUTE = 60.0

const MTKd_DATETIME_LEN = 28

