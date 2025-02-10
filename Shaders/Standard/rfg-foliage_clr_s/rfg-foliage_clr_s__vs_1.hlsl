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
    float4 _418 = r1;
    _418.w = asfloat((asfloat(0u) < r0.w) ? 4294967295u : 0u);
    r1 = _418;
    float4 _427 = r1;
    _427.w = (asuint(r1.w) != 0u) ? asfloat(1065353216u) : asfloat(3212836864u);
    r1 = _427;
    float3 _433 = r1.www * r1.xyz;
    r1 = float4(_433.x, _433.y, _433.z, r1.w);
    float3 _447 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_447.x, _447.y, _447.z, r2.w);
    float3 _461 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_461.x, _461.y, _461.z, r0.w);
    float4 _477 = r1;
    _477.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _477;
    float4 _482 = r2;
    _482.w = rsqrt(r1.w);
    r2 = _482;
    float4 _487 = r1;
    _487.w = sqrt(r1.w);
    r1 = _487;
    float4 _503 = r1;
    _503.w = clamp(((-r1.w) * cb1_m[2].y) + cb1_m[2].x, 0.0f, 1.0f);
    r1 = _503;
    float3 _509 = r2.www * r2.xyz;
    r2 = float4(_509.x, _509.y, _509.z, r2.w);
    float4 _525 = r1;
    _525.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _525;
    float3 _529 = -r2.xyz;
    float3 _537 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _547 = r1;
    _547.y = mad(_529.z, _537.z, mad(_529.y, _537.y, _529.x * _537.x));
    r1 = _547;
    float4 _555 = r1;
    _555.y = min(r1.y, cb1_m[3].x);
    r1 = _555;
    float4 _564 = r1;
    _564.y = r1.y + (-cb1_m[3].y);
    r1 = _564;
    float4 _570 = r1;
    _570.y = max(r1.y, asfloat(0u));
    r1 = _570;
    float4 _578 = r1;
    _578.y = r1.y * cb1_m[3].z;
    r1 = _578;
    float4 _587 = o1;
    _587.w = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    o1 = _587;
    float4 _598 = r1;
    _598.x = (abs(r1.x) * asfloat(1058642330u)) + asfloat(1053609165u);
    r1 = _598;
    float4 _607 = r1;
    _607.z = abs(r0.w) * abs(r0.w);
    r1 = _607;
    float4 _616 = r2;
    _616.x = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r2 = _616;
    float4 _625 = r2;
    _625.x = (asuint(r2.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r2 = _625;
    float4 _636 = r0;
    _636.w = (abs(r0.w) * r1.z) + r2.x;
    r0 = _636;
    float4 _642 = o1;
    _642.z = min(r0.w, asfloat(1065353216u));
    o1 = _642;
    float4 _657 = r0;
    _657.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _657;
    float4 _662 = r0;
    _662.x = sqrt(r0.x);
    r0 = _662;
    float2 _683 = clamp((r0.xx * float2(cb6_m[3].x, cb6_m[3].z)) + float2(cb6_m[3].y, cb6_m[3].w), 0.0f.xx, 1.0f.xx);
    o1 = float4(_683.x, _683.y, o1.z, o1.w);
    float4 _693 = r0;
    _693.x = r0.x * cb0_m[13].y;
    r0 = _693;
    float4 _702 = r0;
    _702.z = asfloat((asfloat(0u) < cb1_m[3].w) ? 4294967295u : 0u);
    r0 = _702;
    float4 _712 = r0;
    _712.z = (asuint(r0.z) != 0u) ? r1.y : asfloat(1065353216u);
    r0 = _712;
    float4 _719 = r0;
    _719.z = r0.z * r1.w;
    r0 = _719;
    float4 _726 = o2;
    _726.w = r0.z * r1.x;
    o2 = _726;
    float3 _739 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o2 = float4(_739.x, _739.y, _739.z, o2.w);
    float4 _748 = r0;
    _748.z = r0.y * cb0_m[13].x;
    r0 = _748;
    float4 _758 = r0;
    _758.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r0 = _758;
    float4 _765 = r0;
    _765.w = r0.z * asfloat(3216550459u);
    r0 = _765;
    float4 _770 = r0;
    _770.w = exp2(r0.w);
    r0 = _770;
    float4 _777 = r0;
    _777.w = (-r0.w) + asfloat(1065353216u);
    r0 = _777;
    float4 _784 = r0;
    _784.z = r0.w / r0.z;
    r0 = _784;
    float4 _794 = r0;
    _794.y = (asuint(r0.y) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _794;
    float4 _806 = r0;
    _806.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _806;
    float4 _812 = r0;
    _812.x = exp2(-r0.x);
    r0 = _812;
    float4 _818 = r0;
    _818.x = min(r0.x, asfloat(1065353216u));
    r0 = _818;
    float3 _825 = o3;
    _825.z = (-r0.x) + asfloat(1065353216u);
    o3 = _825;
    float2 _831 = float2(asint(shader_in[1].xy));
    r0 = float4(_831.x, _831.y, r0.z, r0.w);
    float2 _840 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(_840.x, _840.y, o3.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _849 = asfloat(v1);
    shader_in[1] = float4(_849.x, _849.y, shader_in[1].z, shader_in[1].w);
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
