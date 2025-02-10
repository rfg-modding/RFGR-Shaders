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

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _68 = r0;
    _68.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _68;
    float4 _73 = r0;
    _73.y = rsqrt(r0.x);
    r0 = _73;
    float4 _78 = r0;
    _78.x = sqrt(r0.x);
    r0 = _78;
    float4 _99 = r0;
    _99.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _99;
    float3 _106 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _106.x, _106.y, _106.z);
    float3 _111 = -r0.yzw;
    float4 _126 = r1;
    _126.x = mad(_111.z, shader_in[4].xyz.z, mad(_111.y, shader_in[4].xyz.y, _111.x * shader_in[4].xyz.x));
    r1 = _126;
    float4 _134 = r1;
    _134.x = min(r1.x, cb1_m[2].x);
    r1 = _134;
    float4 _143 = r1;
    _143.x = r1.x + (-cb1_m[2].y);
    r1 = _143;
    float4 _149 = r1;
    _149.x = max(r1.x, asfloat(0u));
    r1 = _149;
    float4 _158 = r1;
    _158.x = r1.x * cb1_m[2].z;
    r1 = _158;
    float4 _169 = r1;
    _169.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _169;
    float4 _180 = r1;
    _180.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _180;
    float4 _187 = r0;
    _187.x = r0.x * r1.x;
    r0 = _187;
    float4 _205 = r1;
    _205.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _205;
    float4 _210 = r1;
    _210.x = rsqrt(r1.x);
    r1 = _210;
    float3 _217 = r1.xxx * shader_in[3].xyz;
    r1 = float4(_217.x, _217.y, _217.z, r1.w);
    float4 _233 = r0;
    _233.y = mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x));
    r0 = _233;
    float4 _239 = r0;
    _239.y = max(r0.y, asfloat(0u));
    r0 = _239;
    float3 _251 = r0.yyy * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _251.x, _251.y, _251.z);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _267 = r1.xyz * r1.xyz;
    r2 = float4(_267.x, _267.y, _267.z, r2.w);
    float3 _275 = r1.xyz * r2.xyz;
    r1 = float4(_275.x, _275.y, _275.z, r1.w);
    float3 _282 = r0.yzw * r1.xyz;
    r0 = float4(r0.x, _282.x, _282.y, _282.z);
    float3 _289 = r0.xxx * r0.yzw;
    r0 = float4(_289.x, _289.y, _289.z, r0.w);
    float2 _302 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_302.x, _302.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _316 = r0.xyz * r1.yyy;
    r0 = float4(_316.x, _316.y, _316.z, r0.w);
    float4 _325 = r0;
    _325.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _325;
    float3 _331 = r0.xyz * r0.www;
    r0 = float4(_331.x, _331.y, _331.z, r0.w);
    float4 _335 = r0;
    _335.w = asfloat(1065353216u);
    r0 = _335;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _365 = gl_FragCoord;
    _365.w = 1.0f / _365.w;
    shader_in[0] = float4(_365.xy.x, _365.xy.y, shader_in[0].z, shader_in[0].w);
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
