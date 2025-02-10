cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _154 = (cb2_m[4].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_154.x, _154.y, _154.z, r0.w);
    float4 _170 = r0;
    _170.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _170;
    float4 _175 = r0;
    _175.w = rsqrt(r0.w);
    r0 = _175;
    float3 _181 = r0.www * r0.xyz;
    r0 = float4(_181.x, _181.y, _181.z, r0.w);
    float4 _200 = r0;
    _200.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _200;
    float4 _205 = r0;
    _205.w = rsqrt(r0.w);
    r0 = _205;
    float3 _212 = r0.www * shader_in[2].xyz;
    r1 = float4(_212.x, _212.y, _212.z, r1.w);
    float4 _228 = r0;
    _228.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _228;
    float4 _234 = r0;
    _234.w = max(r0.w, asfloat(0u));
    r0 = _234;
    float4 _241 = r0;
    _241.w = (-r0.w) + asfloat(1065353216u);
    r0 = _241;
    float4 _248 = r0;
    _248.w = r0.w * r0.w;
    r0 = _248;
    float4 _266 = r1;
    _266.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _266;
    float4 _271 = r1;
    _271.x = rsqrt(r1.x);
    r1 = _271;
    float3 _278 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _294 = r1;
    _294.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _294;
    float4 _311 = r0;
    _311.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _311;
    float4 _323 = r0;
    _323.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _323;
    float4 _331 = r0;
    _331.y = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _331;
    float4 _338 = r0;
    _338.y = (-r0.y) + asfloat(1065353216u);
    r0 = _338;
    float4 _348 = r0;
    _348.y = (r0.y * r0.y) + r0.w;
    r0 = _348;
    float4 _355 = r0;
    _355.y = r0.y + r0.y;
    r0 = _355;
    float4 _360 = r0;
    _360.y = sqrt(r0.y);
    r0 = _360;
    float4 _367 = r0;
    _367.y = (-r0.y) + asfloat(1065353216u);
    r0 = _367;
    float4 _373 = r0;
    _373.y = max(r0.y, asfloat(0u));
    r0 = _373;
    float4 _378 = r0;
    _378.y = log2(r0.y);
    r0 = _378;
    float4 _385 = r0;
    _385.y = r0.y * asfloat(1074580685u);
    r0 = _385;
    float4 _390 = r0;
    _390.y = exp2(r0.y);
    r0 = _390;
    float3 _403 = r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _403.x, _403.y, _403.z);
    float4 _409 = r1;
    _409.y = clamp(r1.x, 0.0f, 1.0f);
    r1 = _409;
    float4 _416 = r1;
    _416.x = r1.x * asfloat(1084227584u);
    r1 = _416;
    float4 _421 = r1;
    _421.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _421;
    float4 _426 = r1;
    _426.x = log2(r1.x);
    r1 = _426;
    float4 _432 = r1;
    _432.x = r1.x * asfloat(1074580685u);
    r1 = _432;
    float4 _437 = r1;
    _437.x = exp2(r1.x);
    r1 = _437;
    float4 _442 = r1;
    _442.y = log2(r1.y);
    r1 = _442;
    float4 _448 = r1;
    _448.y = r1.y * asfloat(1074580685u);
    r1 = _448;
    float4 _453 = r1;
    _453.y = exp2(r1.y);
    r1 = _453;
    float3 _465 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_465.x, _465.y, _465.z, r2.w);
    float3 _483 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(r1.x, _483.x, _483.y, _483.z);
    float3 _493 = (r0.yzw * r1.yzw) + r2.xyz;
    r0 = float4(r0.x, _493.x, _493.y, _493.z);
    float3 _506 = r1.xxx * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(r1.x, _506.x, _506.y, _506.z);
    float3 _522 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.xxx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r2 = float4(_522.x, _522.y, _522.z, r2.w);
    float3 _532 = (r0.yzw * r2.xyz) + r1.yzw;
    r0 = float4(r0.x, _532.x, _532.y, _532.z);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float4 _549 = r1;
    _549.w = r1.w * cb2_m[4].z;
    r1 = _549;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _569 = r2.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_569.x, _569.y, _569.z, r3.w);
    float3 _587 = ((-r2.xyz) * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + r1.xyz;
    r1 = float4(_587.x, _587.y, _587.z, r1.w);
    float3 _597 = (r1.www * r1.xyz) + r3.xyz;
    r1 = float4(_597.x, _597.y, _597.z, r1.w);
    float3 _604 = r0.yzw * r1.xyz;
    r0 = float4(r0.x, _604.x, _604.y, _604.z);
    float2 _617 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_617.x, _617.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _631 = r0.yzw * r3.yyy;
    r0 = float4(r0.x, _631.x, _631.y, _631.z);
    float3 _644 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _644.x, _644.y, _644.z);
    float4 _653 = r1;
    _653.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _653;
    float4 _662 = r1;
    _662.w = abs(r1.w) + abs(r1.w);
    r1 = _662;
    float4 _672 = r1;
    _672.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _672;
    float4 _678 = r1;
    _678.w = max(r1.w, asfloat(0u));
    r1 = _678;
    float4 _687 = r1;
    _687.w = r1.w * cb0_m[7].y;
    r1 = _687;
    float3 _711 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r3 = float4(r3.x, _711.x, _711.y, _711.z);
    float3 _727 = (r0.xxx * r3.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r3 = float4(r3.x, _727.x, _727.y, _727.z);
    float3 _741 = (-r3.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(_741.x, _741.y, _741.z, r4.w);
    float3 _752 = (r1.www * r4.xyz) + r3.yzw;
    r3 = float4(r3.x, _752.x, _752.y, _752.z);
    float3 _759 = r3.xxx * r3.yzw;
    r3 = float4(_759.x, _759.y, _759.z, r3.w);
    float3 _769 = (r3.xyz * r1.xyz) + r0.yzw;
    r0 = float4(_769.x, _769.y, _769.z, r0.w);
    float4 _778 = r0;
    _778.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _778;
    float3 _784 = r0.xyz * r0.www;
    r0 = float4(_784.x, _784.y, _784.z, r0.w);
    float3 _801 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r2 = float4(_801.x, _801.y, _801.z, r2.w);
    o0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _830 = gl_FragCoord;
    _830.w = 1.0f / _830.w;
    shader_in[0] = float4(_830.xy.x, _830.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
