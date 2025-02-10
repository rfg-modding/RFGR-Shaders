cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float2 v2;
static float2 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _57 = r0;
    _57.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _57;
    float4 _67 = r0;
    _67.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _67;
    float4 _77 = r0;
    _77.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _77;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float2 _91 = shader_in[1].xy / shader_in[1].ww;
    r0 = float4(_91.x, _91.y, r0.z, r0.w);
    float2 _99 = r0.xy + asfloat(uint2(1065353216u, 1065353216u));
    r0 = float4(_99.x, _99.y, r0.z, r0.w);
    float4 _107 = r0;
    _107.z = r0.x * asfloat(1056964608u);
    r0 = _107;
    float2 _117 = shader_in[3].xx * asfloat(uint2(1041865114u, 1050253722u));
    r1 = float4(_117.x, _117.y, r1.z, r1.w);
    float2 _128 = (r0.xy * asfloat(uint2(1056964608u, 1056964608u))) + r1.xx;
    r0 = float4(_128.x, _128.y, r0.z, r0.w);
    float2 _137 = r0.xy * asfloat(uint2(1084227584u, 1077936128u));
    r0 = float4(_137.x, _137.y, r0.z, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _152 = r0;
    _152.x = floor(r1.y);
    r0 = _152;
    float4 _166 = r0;
    _166.x = clamp((shader_in[3].x * asfloat(1050253722u)) + (-r0.x), 0.0f, 1.0f);
    r0 = _166;
    float4 _171 = r0;
    _171.z = clamp(r0.z, 0.0f, 1.0f);
    r0 = _171;
    float4 _180 = r0;
    _180.y = shader_in[2].y * asfloat(1017370378u);
    r0 = _180;
    float4 _189 = r0;
    _189.y = (r2.x * asfloat(1017370378u)) + r0.y;
    r0 = _189;
    float4 _196 = r0;
    _196.y = r0.y + r0.z;
    r0 = _196;
    float4 _204 = r0;
    _204.x = (-r0.y) + r0.x;
    r0 = _204;
    float4 _214 = r0;
    _214.y = ((-r0.x) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _214;
    float4 _220 = r0;
    _220.y = max(r0.y, asfloat(0u));
    r0 = _220;
    float4 _225 = r0;
    _225.y = log2(r0.y);
    r0 = _225;
    float4 _232 = r0;
    _232.y = r0.y * asfloat(1128792064u);
    r0 = _232;
    float4 _237 = r0;
    _237.y = exp2(r0.y);
    r0 = _237;
    float4 _243 = r0;
    _243.y = min(r0.y, asfloat(1065353216u));
    r0 = _243;
    float4 _253 = r0;
    _253.x = ((-abs(r0.x)) * asfloat(1073741824u)) + asfloat(1065353216u);
    r0 = _253;
    float4 _259 = r0;
    _259.x = max(r0.x, asfloat(0u));
    r0 = _259;
    float4 _264 = r0;
    _264.x = log2(r0.x);
    r0 = _264;
    float4 _271 = r0;
    _271.x = r0.x * asfloat(1120403456u);
    r0 = _271;
    float4 _276 = r0;
    _276.x = exp2(r0.x);
    r0 = _276;
    float4 _284 = r0;
    _284.x = (-r0.y) + r0.x;
    r0 = _284;
    float4 _290 = r0;
    _290.x = max(r0.x, asfloat(0u));
    r0 = _290;
    float4 _297 = r0;
    _297.y = r0.x * r0.x;
    r0 = _297;
    float3 _317 = (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_317.x, _317.y, _317.z, r1.w);
    float3 _333 = (r0.yyy * r1.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _333.x, _333.y, _333.z);
    float3 _340 = r0.yzw * r0.xxx;
    r0 = float4(_340.x, _340.y, _340.z, r0.w);
    float4 _349 = r0;
    _349.w = (-shader_in[3].y) + asfloat(1065353216u);
    r0 = _349;
    float3 _355 = r0.xyz * r0.www;
    o0 = float4(_355.x, _355.y, _355.z, o0.w);
    float4 _359 = o0;
    _359.w = asfloat(1065353216u);
    o0 = _359;
}

void frag_main()
{
    shader_in[1] = v1;
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, shader_in[3].z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
