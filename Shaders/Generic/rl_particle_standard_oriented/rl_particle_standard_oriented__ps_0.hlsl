cbuffer cb3_t : register(b3)
{
    float4 cb3_m[10] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 v1;
static float4 v2;
static float4 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].zwzz.xy);
    float4 _75 = r0;
    _75.x = (r0.x * cb3_m[4].w) + (-cb3_m[4].z);
    r0 = _75;
    float4 _79 = r0;
    _79.y = asfloat(1065353216u);
    r0 = _79;
    float2 _87 = float2(cb3_m[2].z, cb3_m[2].w);
    float4 _96 = r0;
    _96.z = mad(_87.y, r0.xy.y, _87.x * r0.xy.x);
    r0 = _96;
    float2 _103 = float2(cb3_m[3].z, cb3_m[3].w);
    float4 _112 = r0;
    _112.x = mad(_103.y, r0.xy.y, _103.x * r0.xy.x);
    r0 = _112;
    float4 _119 = r0;
    _119.x = r0.z / r0.x;
    r0 = _119;
    float4 _128 = r0;
    _128.x = r0.x + (-shader_in[4].x);
    r0 = _128;
    float4 _140 = r0;
    _140.y = clamp(r0.x * cb3_m[8].w, 0.0f, 1.0f);
    r0 = _140;
    float4 _154 = r0;
    _154.x = asfloat((r0.x < (-cb3_m[8].w)) ? 4294967295u : 0u);
    r0 = _154;
    float4 _164 = r0;
    _164.x = (asuint(r0.x) != 0u) ? asfloat(1065353216u) : r0.y;
    r0 = _164;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float3 _182 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _192 = r0;
    _192.y = mad(r1.xyz.z, _182.z, mad(r1.xyz.y, _182.y, r1.xyz.x * _182.x));
    r0 = _192;
    float3 _199 = (-r0.yyy) + r1.xyz;
    r2 = float4(_199.x, _199.y, _199.z, r2.w);
    float3 _211 = (shader_in[4].yyy * r2.xyz) + r0.yyy;
    r0 = float4(r0.x, _211.x, _211.y, _211.z);
    float3 _224 = float3(cb3_m[5].x, cb3_m[5].y, cb3_m[5].z);
    float4 _234 = r2;
    _234.x = mad(r0.yzw.z, _224.z, mad(r0.yzw.y, _224.y, r0.yzw.x * _224.x));
    r2 = _234;
    float3 _246 = float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    float4 _256 = r2;
    _256.y = mad(r0.yzw.z, _246.z, mad(r0.yzw.y, _246.y, r0.yzw.x * _246.x));
    r2 = _256;
    float3 _268 = float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z);
    float4 _278 = r2;
    _278.z = mad(r0.yzw.z, _268.z, mad(r0.yzw.y, _268.y, r0.yzw.x * _268.x));
    r2 = _278;
    float3 _284 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r1 = float4(_284.x, _284.y, _284.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _307 = float3(cb3_m[9].x, cb3_m[9].y, cb3_m[9].z);
    float4 _318 = r0;
    _318.y = clamp(mad(shader_in[2].xyz.z, _307.z, mad(shader_in[2].xyz.y, _307.y, shader_in[2].xyz.x * _307.x)), 0.0f, 1.0f);
    r0 = _318;
    float3 _335 = (r0.yyy * float3(cb3_m[8].x, cb3_m[8].y, cb3_m[8].z)) + shader_in[1].xyz;
    r3 = float4(_335.x, _335.y, _335.z, r3.w);
    float4 _342 = r3;
    _342.w = shader_in[1].w;
    r3 = _342;
    r2 = ((-r3) * r1) + r2;
    r1 *= r3;
    r1 = (shader_in[4].zzzz * r2) + r1;
    float4 _365 = r1;
    _365.w = r0.x * r1.w;
    r1 = _365;
    r0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _386 = clamp(r0.www * r0.xyz, 0.0f.xxx, 1.0f.xxx);
    o0 = float4(_386.x, _386.y, _386.z, o0.w);
    float4 _400 = o0;
    _400.w = clamp((shader_in[2].w * (-r0.w)) + r0.w, 0.0f, 1.0f);
    o0 = _400;
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
