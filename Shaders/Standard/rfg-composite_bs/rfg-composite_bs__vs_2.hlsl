cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    float4 _72 = r1;
    _72.x = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _72;
    float4 _90 = r1;
    _90.y = mad(shader_in[6].w, r0.w, mad(shader_in[6].z, r0.z, mad(shader_in[6].y, r0.y, shader_in[6].x * r0.x)));
    r1 = _90;
    float4 _108 = r1;
    _108.z = mad(shader_in[7].w, r0.w, mad(shader_in[7].z, r0.z, mad(shader_in[7].y, r0.y, shader_in[7].x * r0.x)));
    r1 = _108;
    float4 _111 = r1;
    _111.w = asfloat(1065353216u);
    r1 = _111;
    float4 _127 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _141 = o0;
    _141.x = mad(_127.w, r1.w, mad(_127.z, r1.z, mad(_127.y, r1.y, _127.x * r1.x)));
    o0 = _141;
    float4 _153 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _167 = o0;
    _167.y = mad(_153.w, r1.w, mad(_153.z, r1.z, mad(_153.y, r1.y, _153.x * r1.x)));
    o0 = _167;
    float4 _179 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _193 = o0;
    _193.z = mad(_179.w, r1.w, mad(_179.z, r1.z, mad(_179.y, r1.y, _179.x * r1.x)));
    o0 = _193;
    float4 _205 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _219 = o0;
    _219.w = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float3 _232 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_232.x, _232.y, _232.z, r0.w);
    float4 _249 = r1;
    _249.x = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _249;
    float4 _265 = r1;
    _265.y = mad(shader_in[6].xyz.z, r0.xyz.z, mad(shader_in[6].xyz.y, r0.xyz.y, shader_in[6].xyz.x * r0.xyz.x));
    r1 = _265;
    float4 _281 = r1;
    _281.z = mad(shader_in[7].xyz.z, r0.xyz.z, mad(shader_in[7].xyz.y, r0.xyz.y, shader_in[7].xyz.x * r0.xyz.x));
    r1 = _281;
    float4 _296 = r0;
    _296.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _296;
    float4 _301 = r0;
    _301.x = rsqrt(r0.x);
    r0 = _301;
    float3 _307 = r0.xxx * r1.xyz;
    r0 = float4(_307.x, _307.y, _307.z, r0.w);
    r1 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _335 = r2;
    _335.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _335;
    float4 _351 = r2;
    _351.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _351;
    float4 _367 = r2;
    _367.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _367;
    float4 _382 = r0;
    _382.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _382;
    float4 _387 = r0;
    _387.w = rsqrt(r0.w);
    r0 = _387;
    float3 _393 = r0.www * r2.xyz;
    r1 = float4(_393.x, _393.y, _393.z, r1.w);
    float3 _400 = r0.zxy * r1.yzx;
    r2 = float4(_400.x, _400.y, _400.z, r2.w);
    float3 _411 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_411.x, _411.y, _411.z, r2.w);
    float3 _421 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _433 = o1;
    _433.z = mad(_421.z, r0.xyz.z, mad(_421.y, r0.xyz.y, _421.x * r0.xyz.x));
    o1 = _433;
    float3 _442 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _454 = o1;
    _454.x = mad(_442.z, r1.xyz.z, mad(_442.y, r1.xyz.y, _442.x * r1.xyz.x));
    o1 = _454;
    float3 _460 = r1.www * r2.xyz;
    r0 = float4(_460.x, _460.y, _460.z, r0.w);
    float3 _470 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _482 = o1;
    _482.y = mad(_470.z, r0.xyz.z, mad(_470.y, r0.xyz.y, _470.x * r0.xyz.x));
    o1 = _482;
    float2 _489 = float2(asint(shader_in[1].xy));
    r0 = float4(_489.x, _489.y, r0.z, r0.w);
    float2 _498 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(_498.x, _498.y, o2.z, o2.w);
    float2 _505 = float2(asint(shader_in[2].xy));
    r0 = float4(_505.x, _505.y, r0.z, r0.w);
    float2 _511 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float4(o2.x, o2.y, _511.x, _511.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _520 = asfloat(v1);
    shader_in[1] = float4(_520.x, _520.y, shader_in[1].z, shader_in[1].w);
    float2 _525 = asfloat(v2);
    shader_in[2] = float4(_525.x, _525.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
