cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float4 o1;
static float4 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _79 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r0;
    _93.x = mad(_79.w, r1.w, mad(_79.z, r1.z, mad(_79.y, r1.y, _79.x * r1.x)));
    r0 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r0;
    _119.y = mad(_105.w, r1.w, mad(_105.z, r1.z, mad(_105.y, r1.y, _105.x * r1.x)));
    r0 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r0;
    _145.z = mad(_131.w, r1.w, mad(_131.z, r1.z, mad(_131.y, r1.y, _131.x * r1.x)));
    r0 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r0.w, mad(_156.z, r0.z, mad(_156.y, r0.y, _156.x * r0.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r0.w, mad(_232.z, r0.z, mad(_232.y, r0.y, _232.x * r0.x)));
    o0 = _246;
    float3 _259 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_259.x, _259.y, _259.z, r1.w);
    float3 _269 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _282 = r2;
    _282.x = mad(_269.z, r1.xyz.z, mad(_269.y, r1.xyz.y, _269.x * r1.xyz.x));
    r2 = _282;
    float3 _291 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _303 = r2;
    _303.y = mad(_291.z, r1.xyz.z, mad(_291.y, r1.xyz.y, _291.x * r1.xyz.x));
    r2 = _303;
    float3 _312 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _324 = r2;
    _324.z = mad(_312.z, r1.xyz.z, mad(_312.y, r1.xyz.y, _312.x * r1.xyz.x));
    r2 = _324;
    float4 _339 = r0;
    _339.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r2.xyz;
    r1 = float4(_350.x, _350.y, _350.z, r1.w);
    float3 _365 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_365.x, _365.y, _365.z, r2.w);
    float4 _381 = r0;
    _381.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _381;
    float4 _386 = r0;
    _386.w = rsqrt(r0.w);
    r0 = _386;
    float3 _392 = r0.www * r2.xyz;
    r2 = float4(_392.x, _392.y, _392.z, r2.w);
    float4 _408 = r0;
    _408.w = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _408;
    float4 _417 = r1;
    _417.w = abs(r0.w) * abs(r0.w);
    r1 = _417;
    float4 _429 = r2;
    _429.x = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r2 = _429;
    float4 _438 = r2;
    _438.x = (asuint(r2.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r2 = _438;
    float4 _449 = r0;
    _449.w = (abs(r0.w) * r1.w) + r2.x;
    r0 = _449;
    float4 _455 = o1;
    _455.z = min(r0.w, asfloat(1065353216u));
    o1 = _455;
    float3 _468 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_468.x, _468.y, _468.z, r2.w);
    float3 _482 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_482.x, _482.y, _482.z, r0.w);
    float4 _498 = r0;
    _498.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _498;
    float4 _503 = r1;
    _503.w = rsqrt(r0.w);
    r1 = _503;
    float4 _508 = r0;
    _508.w = sqrt(r0.w);
    r0 = _508;
    float4 _524 = r0;
    _524.w = clamp(((-r0.w) * cb1_m[2].y) + cb1_m[2].x, 0.0f, 1.0f);
    r0 = _524;
    float3 _530 = r1.www * r2.xyz;
    r2 = float4(_530.x, _530.y, _530.z, r2.w);
    float4 _546 = r1;
    _546.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _546;
    float3 _550 = -r2.xyz;
    float3 _558 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _568 = r1;
    _568.y = mad(_550.z, _558.z, mad(_550.y, _558.y, _550.x * _558.x));
    r1 = _568;
    float4 _576 = r1;
    _576.y = min(r1.y, cb1_m[3].x);
    r1 = _576;
    float4 _585 = r1;
    _585.y = r1.y + (-cb1_m[3].y);
    r1 = _585;
    float4 _591 = r1;
    _591.y = max(r1.y, asfloat(0u));
    r1 = _591;
    float4 _599 = r1;
    _599.y = r1.y * cb1_m[3].z;
    r1 = _599;
    float4 _607 = o1;
    _607.w = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    o1 = _607;
    float4 _613 = r1;
    _613.x = max(r1.x, asfloat(0u));
    r1 = _613;
    float4 _628 = r0;
    _628.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _628;
    float4 _633 = r0;
    _633.x = sqrt(r0.x);
    r0 = _633;
    float2 _654 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o1 = float4(_654.x, _654.y, o1.z, o1.w);
    float4 _664 = r0;
    _664.x = r0.x * cb0_m[13].y;
    r0 = _664;
    float4 _673 = r0;
    _673.z = asfloat((asfloat(0u) < cb1_m[3].w) ? 4294967295u : 0u);
    r0 = _673;
    float4 _683 = r0;
    _683.z = (asuint(r0.z) != 0u) ? r1.y : asfloat(1065353216u);
    r0 = _683;
    float4 _690 = r0;
    _690.z = r0.z * r0.w;
    r0 = _690;
    float4 _697 = o2;
    _697.w = r0.z * r1.x;
    o2 = _697;
    float3 _710 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o2 = float4(_710.x, _710.y, _710.z, o2.w);
    float4 _719 = r0;
    _719.z = r0.y * cb0_m[13].x;
    r0 = _719;
    float4 _729 = r0;
    _729.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r0 = _729;
    float4 _736 = r0;
    _736.w = r0.z * asfloat(3216550459u);
    r0 = _736;
    float4 _741 = r0;
    _741.w = exp2(r0.w);
    r0 = _741;
    float4 _748 = r0;
    _748.w = (-r0.w) + asfloat(1065353216u);
    r0 = _748;
    float4 _755 = r0;
    _755.z = r0.w / r0.z;
    r0 = _755;
    float4 _765 = r0;
    _765.y = (asuint(r0.y) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _765;
    float4 _777 = r0;
    _777.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _777;
    float4 _783 = r0;
    _783.x = exp2(-r0.x);
    r0 = _783;
    float4 _789 = r0;
    _789.x = min(r0.x, asfloat(1065353216u));
    r0 = _789;
    float3 _796 = o3;
    _796.z = (-r0.x) + asfloat(1065353216u);
    o3 = _796;
    float2 _802 = float2(asint(shader_in[1].xy));
    r0 = float4(_802.x, _802.y, r0.z, r0.w);
    float2 _811 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(_811.x, _811.y, o3.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _820 = asfloat(v1);
    shader_in[1] = float4(_820.x, _820.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
