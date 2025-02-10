cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float2 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float2 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _61 = r0;
    _61.x = clamp(mad(shader_in[2].xyz.z, shader_in[3].xyz.z, mad(shader_in[2].xyz.y, shader_in[3].xyz.y, shader_in[2].xyz.x * shader_in[3].xyz.x)), 0.0f, 1.0f);
    r0 = _61;
    float4 _69 = r0;
    _69.x = (-r0.x) + asfloat(1065353216u);
    r0 = _69;
    float4 _81 = r0;
    _81.x = mad(r0.xx.y, r0.xx.y, r0.xx.x * r0.xx.x);
    r0 = _81;
    float4 _87 = r0;
    _87.x = min(r0.x, asfloat(1065353216u));
    r0 = _87;
    float4 _95 = r0;
    _95.y = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _95;
    float4 _102 = r0;
    _102.z = r0.y * r0.y;
    r0 = _102;
    float4 _109 = r0;
    _109.z = r0.z * r0.z;
    r0 = _109;
    float4 _119 = r0;
    _119.z = clamp(r0.z * shader_in[5].x, 0.0f, 1.0f);
    r0 = _119;
    float4 _126 = r0;
    _126.x = r0.x * r0.z;
    r0 = _126;
    float4 _133 = r0;
    _133.x = r0.y * r0.x;
    r0 = _133;
    float4 _151 = r0;
    _151.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _151;
    float4 _161 = r0;
    _161.w = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _161;
    float4 _171 = r0;
    _171.y = asfloat(asuint(r0.w) & asuint(r0.y));
    r0 = _171;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].zwzz.xy);
    float2 _203 = r1.xy * r2.xy;
    r0 = float4(r0.x, _203.x, r0.z, _203.y);
    float2 _211 = r0.yw * shader_in[5].yy;
    r0 = float4(r0.x, _211.x, r0.z, _211.y);
    float2 _224 = (r0.yw * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(r0.x, _224.x, r0.z, _224.y);
    float4 _233 = r1;
    _233.x = shader_in[2].w + asfloat(3189348762u);
    r1 = _233;
    float2 _244 = clamp(r1.xx * asfloat(uint2(1082130432u, 1066833559u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(_244.x, _244.y, r1.z, r1.w);
    float2 _256 = (r0.yw * asfloat(uint2(1050253722u, 1050253722u))) + shader_in[1].xy;
    r2 = float4(_256.x, _256.y, r2.z, r2.w);
    float4 _260 = r2;
    _260.z = asfloat(0u);
    r2 = _260;
    float3 _269 = (-r2.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    r3 = float4(_269.x, _269.y, _269.z, r3.w);
    float3 _280 = (r1.yyy * r3.xyz) + r2.xyz;
    r1 = float4(r1.x, _280.x, _280.y, _280.z);
    float3 _289 = r1.yzw + (-shader_in[1].xyz);
    r1 = float4(r1.x, _289.x, _289.y, _289.z);
    float3 _300 = (r1.xxx * r1.yzw) + shader_in[1].xyz;
    r1 = float4(_300.x, _300.y, _300.z, r1.w);
    float3 _309 = r1.xyz + asfloat(uint3(3204448256u, 3204448256u, 2147483648u));
    r1 = float4(_309.x, _309.y, _309.z, r1.w);
    float3 _318 = (r0.zzz * r1.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    o0 = float4(_318.x, _318.y, _318.z, o0.w);
    float4 _323 = o0;
    _323.w = r0.x;
    o0 = _323;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, shader_in[5].z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
