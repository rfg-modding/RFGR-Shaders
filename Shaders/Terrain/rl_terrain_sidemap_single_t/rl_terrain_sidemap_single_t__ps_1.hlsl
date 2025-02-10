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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].zwzz.xy);
    float3 _79 = (r0.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _79.x, _79.y, _79.z);
    float4 _87 = r0;
    _87.x = r0.w * r0.z;
    r0 = _87;
    float4 _99 = r0;
    _99.w = mad(r0.xy.y, r0.xy.y, r0.xy.x * r0.xy.x);
    r0 = _99;
    float4 _107 = r0;
    _107.w = (-r0.w) + asfloat(1065353216u);
    r0 = _107;
    float4 _114 = r0;
    _114.w = max(r0.w, asfloat(0u));
    r0 = _114;
    float4 _119 = r0;
    _119.z = sqrt(r0.w);
    r0 = _119;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _135 = (r1.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _135.x, _135.y, _135.z);
    float4 _143 = r1;
    _143.x = r1.w * r1.z;
    r1 = _143;
    float4 _155 = r0;
    _155.w = mad(r1.xy.y, r1.xy.y, r1.xy.x * r1.xy.x);
    r0 = _155;
    float4 _162 = r0;
    _162.w = (-r0.w) + asfloat(1065353216u);
    r0 = _162;
    float4 _168 = r0;
    _168.w = max(r0.w, asfloat(0u));
    r0 = _168;
    float4 _173 = r1;
    _173.z = sqrt(r0.w);
    r1 = _173;
    float3 _180 = r0.xyz + (-r1.xyz);
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float4 _193 = r0;
    _193.w = abs(shader_in[3].z) + abs(shader_in[3].x);
    r0 = _193;
    float4 _202 = r0;
    _202.w = abs(shader_in[3].x) / r0.w;
    r0 = _202;
    float4 _209 = r0;
    _209.w = r0.w + asfloat(3202770534u);
    r0 = _209;
    float4 _219 = r0;
    _219.w = clamp(r0.w * asfloat(1092616192u), 0.0f, 1.0f);
    r0 = _219;
    float3 _228 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_228.x, _228.y, _228.z, r0.w);
    float4 _247 = r1;
    _247.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _247;
    float4 _252 = r1;
    _252.x = rsqrt(r1.x);
    r1 = _252;
    float3 _259 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_259.x, _259.y, _259.z, r1.w);
    float3 _264 = -r1.xyz;
    float4 _276 = r1;
    _276.w = mad(_264.z, r0.xyz.z, mad(_264.y, r0.xyz.y, _264.x * r0.xyz.x));
    r1 = _276;
    float4 _282 = r1;
    _282.w = r1.w + asfloat(1065353216u);
    r1 = _282;
    float4 _287 = r1;
    _287.w = log2(r1.w);
    r1 = _287;
    float4 _294 = r1;
    _294.w = r1.w * asfloat(1083179008u);
    r1 = _294;
    float4 _299 = r1;
    _299.w = exp2(r1.w);
    r1 = _299;
    float4 _305 = r1;
    _305.w = min(r1.w, asfloat(1065353216u));
    r1 = _305;
    float4 _324 = r2;
    _324.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r2 = _324;
    float4 _329 = r2;
    _329.y = rsqrt(r2.x);
    r2 = _329;
    float4 _334 = r2;
    _334.x = sqrt(r2.x);
    r2 = _334;
    float4 _351 = r2;
    _351.x = clamp(((-r2.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r2 = _351;
    float3 _361 = (shader_in[1].xyz * r2.yyy) + r1.xyz;
    r1 = float4(_361.x, _361.y, _361.z, r1.w);
    float3 _369 = r2.yyy * shader_in[1].xyz;
    r2 = float4(r2.x, _369.x, _369.y, _369.z);
    float4 _386 = r3;
    _386.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r3 = _386;
    float4 _391 = r3;
    _391.x = rsqrt(r3.x);
    r3 = _391;
    float3 _397 = r1.xyz * r3.xxx;
    r1 = float4(_397.x, _397.y, _397.z, r1.w);
    float4 _414 = r1;
    _414.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _414;
    float4 _430 = r0;
    _430.x = clamp(mad(r0.xyz.z, r2.yzw.z, mad(r0.xyz.y, r2.yzw.y, r0.xyz.x * r2.yzw.x)), 0.0f, 1.0f);
    r0 = _430;
    float3 _434 = -r2.yzw;
    float4 _448 = r0;
    _448.y = mad(_434.z, shader_in[4].xyz.z, mad(_434.y, shader_in[4].xyz.y, _434.x * shader_in[4].xyz.x));
    r0 = _448;
    float4 _456 = r0;
    _456.y = min(r0.y, cb1_m[2].x);
    r0 = _456;
    float4 _465 = r0;
    _465.y = r0.y + (-cb1_m[2].y);
    r0 = _465;
    float4 _471 = r0;
    _471.y = max(r0.y, asfloat(0u));
    r0 = _471;
    float4 _480 = r0;
    _480.y = r0.y * cb1_m[2].z;
    r0 = _480;
    float4 _487 = r0;
    _487.z = r1.x + asfloat(925353388u);
    r0 = _487;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    r3 += (-r4);
    r3 = (r0.wwww * r3) + r4;
    float4 _521 = r0;
    _521.w = (-r3.w) + asfloat(1065353216u);
    r0 = _521;
    float3 _534 = r3.xyz * float3(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z);
    r1 = float4(_534.x, _534.y, _534.z, r1.w);
    float4 _542 = r0;
    _542.z = r0.w * r0.z;
    r0 = _542;
    float3 _548 = r1.xyz * r0.zzz;
    r2 = float4(r2.x, _548.x, _548.y, _548.z);
    float3 _555 = r1.www * r2.yzw;
    r2 = float4(r2.x, _555.x, _555.y, _555.z);
    float3 _563 = r2.yzw * asfloat(uint3(1148846080u, 1148846080u, 1148846080u));
    r2 = float4(r2.x, _563.x, _563.y, _563.z);
    float4 _575 = r0;
    _575.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _575;
    float4 _585 = r0;
    _585.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _585;
    float4 _592 = r0;
    _592.y = r0.y * r2.x;
    r0 = _592;
    float4 _599 = r0;
    _599.x = r0.y * r0.x;
    r0 = _599;
    float3 _608 = (r1.xyz * r0.xxx) + r2.yzw;
    r0 = float4(_608.x, _608.y, _608.z, r0.w);
    float3 _621 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_621.x, _621.y, _621.z, r0.w);
    float2 _634 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_634.x, _634.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _648 = r0.xyz * r1.yyy;
    r0 = float4(_648.x, _648.y, _648.z, r0.w);
    float4 _657 = r0;
    _657.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _657;
    float3 _663 = r0.xyz * r0.www;
    r0 = float4(_663.x, _663.y, _663.z, r0.w);
    float4 _669 = r0;
    _669.w = shader_in[3].w;
    r0 = _669;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _699 = gl_FragCoord;
    _699.w = 1.0f / _699.w;
    shader_in[0] = float4(_699.xy.x, _699.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
