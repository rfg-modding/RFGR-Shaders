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
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
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
    float3 _261 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
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
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _371 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _384 = r3;
    _384.x = mad(_371.z, r2.xyz.z, mad(_371.y, r2.xyz.y, _371.x * r2.xyz.x));
    r3 = _384;
    float3 _393 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _405 = r3;
    _405.y = mad(_393.z, r2.xyz.z, mad(_393.y, r2.xyz.y, _393.x * r2.xyz.x));
    r3 = _405;
    float3 _414 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _426 = r3;
    _426.z = mad(_414.z, r2.xyz.z, mad(_414.y, r2.xyz.y, _414.x * r2.xyz.x));
    r3 = _426;
    float4 _441 = r0;
    _441.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _441;
    float4 _446 = r0;
    _446.w = rsqrt(r0.w);
    r0 = _446;
    float3 _452 = r0.www * r3.xyz;
    r2 = float4(_452.x, _452.y, _452.z, r2.w);
    float3 _459 = r1.zxy * r2.yzx;
    r3 = float4(_459.x, _459.y, _459.z, r3.w);
    float3 _470 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_470.x, _470.y, _470.z, r3.w);
    float3 _477 = r2.www * r3.xyz;
    r3 = float4(_477.x, _477.y, _477.z, r3.w);
    float3 _487 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _499 = o1;
    _499.y = mad(_487.z, r3.xyz.z, mad(_487.y, r3.xyz.y, _487.x * r3.xyz.x));
    o1 = _499;
    float3 _508 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _520 = o1;
    _520.z = mad(_508.z, r1.xyz.z, mad(_508.y, r1.xyz.y, _508.x * r1.xyz.x));
    o1 = _520;
    float3 _529 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _541 = o1;
    _541.x = mad(_529.z, r2.xyz.z, mad(_529.y, r2.xyz.y, _529.x * r2.xyz.x));
    o1 = _541;
    float3 _555 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_555.x, _555.y, _555.z, r4.w);
    float3 _570 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_570.x, _570.y, _570.z, r0.w);
    float4 _586 = r0;
    _586.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _586;
    float4 _591 = r0;
    _591.w = rsqrt(r0.w);
    r0 = _591;
    float3 _597 = r0.www * r4.xyz;
    r4 = float4(_597.x, _597.y, _597.z, r4.w);
    float3 _613 = o2;
    _613.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _613;
    float4 _617 = o3;
    _617.x = r2.y;
    o3 = _617;
    float3 _632 = o2;
    _632.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _632;
    float4 _636 = o3;
    _636.z = r1.y;
    o3 = _636;
    float3 _651 = o2;
    _651.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _651;
    float4 _655 = o3;
    _655.y = r3.y;
    o3 = _655;
    float4 _664 = r0;
    _664.w = r0.y * cb0_m[13].x;
    r0 = _664;
    float4 _671 = r1;
    _671.x = r0.w * asfloat(3216550459u);
    r1 = _671;
    float4 _676 = r1;
    _676.x = exp2(r1.x);
    r1 = _676;
    float4 _683 = r1;
    _683.x = (-r1.x) + asfloat(1065353216u);
    r1 = _683;
    float4 _690 = r0;
    _690.w = r1.x / r0.w;
    r0 = _690;
    float4 _702 = r1;
    _702.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _702;
    float4 _717 = r0;
    _717.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _717;
    float4 _722 = r0;
    _722.x = sqrt(r0.x);
    r0 = _722;
    float4 _730 = r0;
    _730.x = r0.x * cb0_m[13].y;
    r0 = _730;
    float4 _740 = r0;
    _740.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _740;
    float4 _752 = r0;
    _752.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _752;
    float4 _758 = r0;
    _758.x = exp2(-r0.x);
    r0 = _758;
    float4 _764 = r0;
    _764.x = min(r0.x, asfloat(1065353216u));
    r0 = _764;
    float4 _771 = o3;
    _771.w = (-r0.x) + asfloat(1065353216u);
    o3 = _771;
    float2 _778 = float2(asint(shader_in[1].xy));
    r0 = float4(_778.x, _778.y, r0.z, r0.w);
    float2 _790 = r0.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r0 = float4(_790.x, _790.y, r0.z, r0.w);
    float2 _799 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_799.x, _799.y, o4.z, o4.w);
    float2 _807 = float2(asint(shader_in[4].xy));
    r0 = float4(_807.x, _807.y, r0.z, r0.w);
    float2 _813 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _813.x, _813.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _822 = asfloat(v1);
    shader_in[1] = float4(_822.x, _822.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _833 = asfloat(v4);
    shader_in[4] = float4(_833.x, _833.y, shader_in[4].z, shader_in[4].w);
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
