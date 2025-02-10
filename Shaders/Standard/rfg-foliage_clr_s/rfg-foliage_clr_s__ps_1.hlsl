cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float4 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float4 _77 = r1;
    _77.x = asfloat((shader_in[1].x >= r0.w) ? 4294967295u : 0u);
    r1 = _77;
    float4 _87 = r1;
    _87.y = asfloat((r0.w >= shader_in[1].y) ? 4294967295u : 0u);
    r1 = _87;
    float2 _96 = asfloat(asuint(r1.xy) & uint2(1065353216u, 1065353216u));
    r1 = float4(_96.x, _96.y, r1.z, r1.w);
    float4 _104 = r1;
    _104.x = r1.y * r1.x;
    r1 = _104;
    float4 _117 = r0;
    _117.w = asfloat((r0.w >= cb2_m[3].x) ? 4294967295u : 0u);
    r0 = _117;
    float3 _125 = r0.xyz * shader_in[2].xyz;
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    float3 _133 = r0.xyz * shader_in[2].www;
    r0 = float4(_133.x, _133.y, _133.z, r0.w);
    float3 _147 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_147.x, _147.y, _147.z, r0.w);
    float4 _155 = r0;
    _155.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _155;
    float4 _162 = r0;
    _162.w = r0.w * r1.x;
    r0 = _162;
    float4 _170 = r1;
    _170.w = r0.w * shader_in[1].z;
    r1 = _170;
    float2 _183 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_183.x, _183.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _198 = r0.xyz * r2.yyy;
    r0 = float4(_198.x, _198.y, _198.z, r0.w);
    float4 _207 = r0;
    _207.w = (-shader_in[3].z) + asfloat(1065353216u);
    r0 = _207;
    float3 _213 = r0.xyz * r0.www;
    r1 = float4(_213.x, _213.y, _213.z, r1.w);
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    float4 _240 = gl_FragCoord;
    _240.w = 1.0f / _240.w;
    shader_in[0] = float4(_240.xy.x, _240.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
