cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _80 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _80.x, _80.y, _80.z);
    float4 _89 = r0;
    _89.y = r0.y + r0.y;
    r0 = _89;
    float4 _96 = r1;
    _96.x = r1.w * r1.y;
    r1 = _96;
    float4 _108 = r0;
    _108.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _108;
    float4 _112 = r0;
    _112.x = r1.x;
    r0 = _112;
    float4 _120 = r0;
    _120.w = (-r0.w) + asfloat(1065353216u);
    r0 = _120;
    float4 _127 = r0;
    _127.w = max(r0.w, asfloat(0u));
    r0 = _127;
    float4 _132 = r0;
    _132.z = sqrt(r0.w);
    r0 = _132;
    float3 _139 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_139.x, _139.y, _139.z, r0.w);
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
    _271.y = rsqrt(r1.x);
    r1 = _271;
    float4 _276 = r1;
    _276.x = sqrt(r1.x);
    r1 = _276;
    float4 _292 = r1;
    _292.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _292;
    float3 _299 = r1.yyy * shader_in[1].xyz;
    r1 = float4(r1.x, _299.x, _299.y, _299.z);
    float4 _315 = r0;
    _315.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _315;
    float3 _319 = -r1.yzw;
    float4 _333 = r0;
    _333.y = mad(_319.z, shader_in[3].xyz.z, mad(_319.y, shader_in[3].xyz.y, _319.x * shader_in[3].xyz.x));
    r0 = _333;
    float4 _341 = r0;
    _341.y = min(r0.y, cb1_m[2].x);
    r0 = _341;
    float4 _350 = r0;
    _350.y = r0.y + (-cb1_m[2].y);
    r0 = _350;
    float4 _356 = r0;
    _356.y = max(r0.y, asfloat(0u));
    r0 = _356;
    float4 _365 = r0;
    _365.y = r0.y * cb1_m[2].z;
    r0 = _365;
    float4 _374 = r0;
    _374.z = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _374;
    float4 _381 = r0;
    _381.z = (-r0.z) + asfloat(1065353216u);
    r0 = _381;
    float4 _391 = r0;
    _391.z = (r0.z * r0.z) + r0.w;
    r0 = _391;
    float4 _398 = r0;
    _398.z = r0.z + r0.z;
    r0 = _398;
    float4 _403 = r0;
    _403.z = sqrt(r0.z);
    r0 = _403;
    float4 _410 = r0;
    _410.z = (-r0.z) + asfloat(1065353216u);
    r0 = _410;
    float4 _416 = r0;
    _416.z = max(r0.z, asfloat(0u));
    r0 = _416;
    float4 _421 = r0;
    _421.z = log2(r0.z);
    r0 = _421;
    float4 _428 = r0;
    _428.z = r0.z * asfloat(1074580685u);
    r0 = _428;
    float4 _434 = r2;
    _434.x = exp2(r0.z);
    r2 = _434;
    float4 _445 = r0;
    _445.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _445;
    float4 _455 = r0;
    _455.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _455;
    float4 _462 = r0;
    _462.y = r0.y * r1.x;
    r0 = _462;
    float4 _469 = r1;
    _469.x = r0.x * asfloat(1084227584u);
    r1 = _469;
    float4 _474 = r0;
    _474.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _474;
    float4 _479 = r0;
    _479.x = log2(r0.x);
    r0 = _479;
    float4 _485 = r0;
    _485.x = r0.x * asfloat(1074580685u);
    r0 = _485;
    float4 _490 = r2;
    _490.y = exp2(r0.x);
    r2 = _490;
    float4 _495 = r1;
    _495.x = clamp(r1.x, 0.0f, 1.0f);
    r1 = _495;
    float4 _500 = r0;
    _500.x = log2(r1.x);
    r0 = _500;
    float4 _506 = r0;
    _506.x = r0.x * asfloat(1074580685u);
    r0 = _506;
    float4 _511 = r2;
    _511.z = exp2(r0.x);
    r2 = _511;
    float3 _517 = r0.yyy * r2.xyz;
    r0 = float4(_517.x, _517.y, _517.z, r0.w);
    float3 _530 = r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_530.x, _530.y, _530.z, r1.w);
    float3 _543 = r0.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_543.x, _543.y, _543.z, r2.w);
    float3 _560 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_560.x, _560.y, r0.z, _560.z);
    float3 _570 = (r1.xyz * r0.xyw) + r2.xyz;
    r0 = float4(_570.x, _570.y, r0.z, _570.z);
    float3 _583 = r0.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_583.x, _583.y, _583.z, r1.w);
    float3 _599 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r2 = float4(_599.x, _599.y, _599.z, r2.w);
    float3 _609 = (r0.xyw * r2.xyz) + r1.xyz;
    r0 = float4(_609.x, _609.y, _609.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float4 _626 = r0;
    _626.w = r1.w * cb2_m[4].z;
    r0 = _626;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _646 = r2.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_646.x, _646.y, _646.z, r3.w);
    float3 _664 = ((-r2.xyz) * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + r1.xyz;
    r1 = float4(_664.x, _664.y, _664.z, r1.w);
    float3 _674 = (r0.www * r1.xyz) + r3.xyz;
    r1 = float4(_674.x, _674.y, _674.z, r1.w);
    float3 _681 = r0.xyz * r1.xyz;
    r0 = float4(_681.x, _681.y, _681.z, r0.w);
    float2 _694 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_694.x, _694.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _708 = r0.xyz * r1.yyy;
    r0 = float4(_708.x, _708.y, _708.z, r0.w);
    float3 _721 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_721.x, _721.y, _721.z, r0.w);
    float4 _730 = r0;
    _730.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _730;
    float3 _736 = r0.xyz * r0.www;
    r2 = float4(_736.x, _736.y, _736.z, r2.w);
    o0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _765 = gl_FragCoord;
    _765.w = 1.0f / _765.w;
    shader_in[0] = float4(_765.xy.x, _765.xy.y, shader_in[0].z, shader_in[0].w);
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
