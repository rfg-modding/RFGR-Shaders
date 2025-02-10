cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float3 _261 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float3 _271 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _284 = r2;
    _284.x = mad(_271.z, r1.xyz.z, mad(_271.y, r1.xyz.y, _271.x * r1.xyz.x));
    r2 = _284;
    float3 _293 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _305 = r2;
    _305.y = mad(_293.z, r1.xyz.z, mad(_293.y, r1.xyz.y, _293.x * r1.xyz.x));
    r2 = _305;
    float3 _314 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _326 = r2;
    _326.z = mad(_314.z, r1.xyz.z, mad(_314.y, r1.xyz.y, _314.x * r1.xyz.x));
    r2 = _326;
    float4 _341 = r0;
    _341.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _341;
    float4 _346 = r0;
    _346.w = rsqrt(r0.w);
    r0 = _346;
    float3 _352 = r0.www * r2.xyz;
    r1 = float4(_352.x, _352.y, _352.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _372 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _385 = r3;
    _385.x = mad(_372.z, r2.xyz.z, mad(_372.y, r2.xyz.y, _372.x * r2.xyz.x));
    r3 = _385;
    float3 _394 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _406 = r3;
    _406.y = mad(_394.z, r2.xyz.z, mad(_394.y, r2.xyz.y, _394.x * r2.xyz.x));
    r3 = _406;
    float3 _415 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _427 = r3;
    _427.z = mad(_415.z, r2.xyz.z, mad(_415.y, r2.xyz.y, _415.x * r2.xyz.x));
    r3 = _427;
    float4 _442 = r0;
    _442.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.w = rsqrt(r0.w);
    r0 = _447;
    float3 _453 = r0.www * r3.xyz;
    r2 = float4(_453.x, _453.y, _453.z, r2.w);
    float3 _460 = r1.zxy * r2.yzx;
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _471 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_471.x, _471.y, _471.z, r3.w);
    float3 _478 = r2.www * r3.xyz;
    r3 = float4(_478.x, _478.y, _478.z, r3.w);
    float3 _492 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_492.x, _492.y, _492.z, r4.w);
    float3 _509 = o1;
    _509.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _509;
    float3 _524 = o1;
    _524.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _524;
    float3 _539 = o1;
    _539.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _539;
    float3 _553 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_553.x, _553.y, _553.z, r4.w);
    float3 _567 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_567.x, _567.y, _567.z, r0.w);
    float4 _583 = r0;
    _583.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _583;
    float4 _588 = r0;
    _588.w = rsqrt(r0.w);
    r0 = _588;
    float3 _594 = r0.www * r4.xyz;
    r4 = float4(_594.x, _594.y, _594.z, r4.w);
    float3 _610 = o2;
    _610.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _610;
    float3 _619 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _631 = o3;
    _631.x = mad(_619.z, r2.xyz.z, mad(_619.y, r2.xyz.y, _619.x * r2.xyz.x));
    o3 = _631;
    float3 _646 = o2;
    _646.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _646;
    float3 _655 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _667 = o3;
    _667.z = mad(_655.z, r1.xyz.z, mad(_655.y, r1.xyz.y, _655.x * r1.xyz.x));
    o3 = _667;
    float3 _682 = o2;
    _682.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _682;
    float3 _691 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _703 = o3;
    _703.y = mad(_691.z, r3.xyz.z, mad(_691.y, r3.xyz.y, _691.x * r3.xyz.x));
    o3 = _703;
    float4 _712 = r0;
    _712.w = r0.y * cb0_m[13].x;
    r0 = _712;
    float4 _719 = r1;
    _719.x = r0.w * asfloat(3216550459u);
    r1 = _719;
    float4 _724 = r1;
    _724.x = exp2(r1.x);
    r1 = _724;
    float4 _731 = r1;
    _731.x = (-r1.x) + asfloat(1065353216u);
    r1 = _731;
    float4 _738 = r0;
    _738.w = r1.x / r0.w;
    r0 = _738;
    float4 _750 = r1;
    _750.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _750;
    float4 _765 = r0;
    _765.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _765;
    float4 _770 = r0;
    _770.x = sqrt(r0.x);
    r0 = _770;
    float4 _778 = r0;
    _778.x = r0.x * cb0_m[13].y;
    r0 = _778;
    float4 _788 = r0;
    _788.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _788;
    float4 _800 = r0;
    _800.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _800;
    float4 _806 = r0;
    _806.x = exp2(-r0.x);
    r0 = _806;
    float4 _812 = r0;
    _812.x = min(r0.x, asfloat(1065353216u));
    r0 = _812;
    float4 _819 = o3;
    _819.w = (-r0.x) + asfloat(1065353216u);
    o3 = _819;
    float2 _826 = float2(asint(shader_in[1].xy));
    r0 = float4(_826.x, _826.y, r0.z, r0.w);
    float2 _837 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(_837.x, _837.y, r0.z, r0.w);
    float2 _846 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_846.x, _846.y, o4.z, o4.w);
    float2 _853 = float2(asint(shader_in[2].xy));
    r0 = float4(_853.x, _853.y, r0.z, r0.w);
    float2 _859 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _859.x, _859.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _868 = asfloat(v1);
    shader_in[1] = float4(_868.x, _868.y, shader_in[1].z, shader_in[1].w);
    float2 _873 = asfloat(v2);
    shader_in[2] = float4(_873.x, _873.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
