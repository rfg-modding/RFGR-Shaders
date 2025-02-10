cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _65 = r0;
    _65.x = shader_in[5].x * asfloat(1082130432u);
    r0 = _65;
    float3 _78 = (r0.xxx * shader_in[4].xyz) + shader_in[0].xyz;
    r0 = float4(_78.x, _78.y, _78.z, r0.w);
    float4 _83 = r0;
    _83.w = asfloat(1065353216u);
    r0 = _83;
    float4 _97 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _112 = r1;
    _112.x = mad(_97.w, r0.w, mad(_97.z, r0.z, mad(_97.y, r0.y, _97.x * r0.x)));
    r1 = _112;
    float4 _124 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _138 = r1;
    _138.y = mad(_124.w, r0.w, mad(_124.z, r0.z, mad(_124.y, r0.y, _124.x * r0.x)));
    r1 = _138;
    float4 _150 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _164 = r1;
    _164.z = mad(_150.w, r0.w, mad(_150.z, r0.z, mad(_150.y, r0.y, _150.x * r0.x)));
    r1 = _164;
    float4 _167 = r1;
    _167.w = asfloat(1065353216u);
    r1 = _167;
    float4 _178 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _192 = o0;
    _192.x = mad(_178.w, r1.w, mad(_178.z, r1.z, mad(_178.y, r1.y, _178.x * r1.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _217 = o0;
    _217.y = mad(_203.w, r1.w, mad(_203.z, r1.z, mad(_203.y, r1.y, _203.x * r1.x)));
    o0 = _217;
    float4 _228 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _242 = o0;
    _242.z = mad(_228.w, r1.w, mad(_228.z, r1.z, mad(_228.y, r1.y, _228.x * r1.x)));
    o0 = _242;
    float4 _254 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _268 = o0;
    _268.w = mad(_254.w, r1.w, mad(_254.z, r1.z, mad(_254.y, r1.y, _254.x * r1.x)));
    o0 = _268;
    float2 _274 = float2(asint(shader_in[1].xy));
    r0 = float4(_274.x, _274.y, r0.z, r0.w);
    float2 _285 = r0.xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_285.x, _285.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _306 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_306.x, _306.y, _306.z, r0.w);
    float3 _316 = (shader_in[6].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_316.x, _316.y, _316.z, r2.w);
    float3 _328 = (shader_in[5].xxx * r2.xyz) + r0.xyz;
    r0 = float4(_328.x, _328.y, _328.z, r0.w);
    float3 _338 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _350 = r2;
    _350.x = mad(_338.z, r0.xyz.z, mad(_338.y, r0.xyz.y, _338.x * r0.xyz.x));
    r2 = _350;
    float3 _359 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _371 = r2;
    _371.y = mad(_359.z, r0.xyz.z, mad(_359.y, r0.xyz.y, _359.x * r0.xyz.x));
    r2 = _371;
    float3 _380 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _392 = r2;
    _392.z = mad(_380.z, r0.xyz.z, mad(_380.y, r0.xyz.y, _380.x * r0.xyz.x));
    r2 = _392;
    float4 _407 = r0;
    _407.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _407;
    float4 _412 = r0;
    _412.x = rsqrt(r0.x);
    r0 = _412;
    float3 _418 = r0.xxx * r2.xyz;
    r0 = float4(_418.x, _418.y, _418.z, r0.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _437 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _450 = r3;
    _450.x = mad(_437.z, r2.xyz.z, mad(_437.y, r2.xyz.y, _437.x * r2.xyz.x));
    r3 = _450;
    float3 _459 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _471 = r3;
    _471.y = mad(_459.z, r2.xyz.z, mad(_459.y, r2.xyz.y, _459.x * r2.xyz.x));
    r3 = _471;
    float3 _480 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _492 = r3;
    _492.z = mad(_480.z, r2.xyz.z, mad(_480.y, r2.xyz.y, _480.x * r2.xyz.x));
    r3 = _492;
    float4 _507 = r0;
    _507.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _507;
    float4 _512 = r0;
    _512.w = rsqrt(r0.w);
    r0 = _512;
    float3 _518 = r0.www * r3.xyz;
    r2 = float4(_518.x, _518.y, _518.z, r2.w);
    float3 _525 = r0.zxy * r2.yzx;
    r3 = float4(_525.x, _525.y, _525.z, r3.w);
    float3 _536 = (r0.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_536.x, _536.y, _536.z, r3.w);
    float3 _543 = r2.www * r3.xyz;
    r3 = float4(_543.x, _543.y, _543.z, r3.w);
    float3 _553 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _565 = o2;
    _565.y = mad(_553.z, r3.xyz.z, mad(_553.y, r3.xyz.y, _553.x * r3.xyz.x));
    o2 = _565;
    float3 _574 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _586 = o2;
    _586.z = mad(_574.z, r0.xyz.z, mad(_574.y, r0.xyz.y, _574.x * r0.xyz.x));
    o2 = _586;
    float3 _595 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _607 = o2;
    _607.x = mad(_595.z, r2.xyz.z, mad(_595.y, r2.xyz.y, _595.x * r2.xyz.x));
    o2 = _607;
    float3 _621 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_621.x, _621.y, _621.z, r4.w);
    float3 _636 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_636.x, _636.y, _636.z, r1.w);
    float4 _652 = r0;
    _652.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _652;
    float4 _657 = r0;
    _657.w = rsqrt(r0.w);
    r0 = _657;
    float3 _663 = r0.www * r4.xyz;
    r4 = float4(_663.x, _663.y, _663.z, r4.w);
    float3 _679 = o3;
    _679.z = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o3 = _679;
    float4 _683 = o4;
    _683.z = r0.y;
    o4 = _683;
    float3 _698 = o3;
    _698.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _698;
    float4 _702 = o4;
    _702.x = r2.y;
    o4 = _702;
    float3 _717 = o3;
    _717.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _717;
    float4 _721 = o4;
    _721.y = r3.y;
    o4 = _721;
    float4 _730 = r0;
    _730.x = r1.y * cb0_m[13].x;
    r0 = _730;
    float4 _737 = r0;
    _737.y = r0.x * asfloat(3216550459u);
    r0 = _737;
    float4 _742 = r0;
    _742.y = exp2(r0.y);
    r0 = _742;
    float4 _749 = r0;
    _749.y = (-r0.y) + asfloat(1065353216u);
    r0 = _749;
    float4 _756 = r0;
    _756.x = r0.y / r0.x;
    r0 = _756;
    float4 _768 = r0;
    _768.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _768;
    float4 _783 = r0;
    _783.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _783;
    float4 _788 = r0;
    _788.z = sqrt(r0.z);
    r0 = _788;
    float4 _796 = r0;
    _796.z = r0.z * cb0_m[13].y;
    r0 = _796;
    float4 _806 = r0;
    _806.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _806;
    float4 _818 = r0;
    _818.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _818;
    float4 _824 = r0;
    _824.x = exp2(-r0.x);
    r0 = _824;
    float4 _830 = r0;
    _830.x = min(r0.x, asfloat(1065353216u));
    r0 = _830;
    float4 _837 = o4;
    _837.w = (-r0.x) + asfloat(1065353216u);
    o4 = _837;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _845 = asfloat(v1);
    shader_in[1] = float4(_845.x, _845.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
