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

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _65 = r0;
    _65.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _65;
    float4 _70 = r0;
    _70.x = rsqrt(r0.x);
    r0 = _70;
    float3 _77 = r0.xxx * shader_in[2].xyz;
    r0 = float4(_77.x, _77.y, _77.z, r0.w);
    float4 _96 = r0;
    _96.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _96;
    float4 _101 = r0;
    _101.w = rsqrt(r0.w);
    r0 = _101;
    float3 _108 = r0.www * shader_in[3].xyz;
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    float4 _125 = r0;
    _125.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _125;
    float4 _132 = r0;
    _132.x = max(r0.x, asfloat(0u));
    r0 = _132;
    float3 _148 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_148.x, _148.y, _148.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _165 = r1.xyz * r1.xyz;
    r2 = float4(_165.x, _165.y, _165.z, r2.w);
    float3 _173 = r1.xyz * r2.xyz;
    r1 = float4(_173.x, _173.y, _173.z, r1.w);
    float3 _180 = r0.xyz * r1.xyz;
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float2 _194 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_194.x, _194.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _208 = r0.xyz * r2.yyy;
    r0 = float4(_208.x, _208.y, _208.z, r0.w);
    float3 _224 = (float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) * r1.xyz) + r0.xyz;
    r0 = float4(_224.x, _224.y, _224.z, r0.w);
    float4 _234 = r0;
    _234.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _234;
    float3 _240 = r0.xyz * r0.www;
    r0 = float4(_240.x, _240.y, _240.z, r0.w);
    float3 _258 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float4 _264 = r0;
    _264.w = shader_in[2].w;
    r0 = _264;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    float4 _288 = gl_FragCoord;
    _288.w = 1.0f / _288.w;
    shader_in[0] = float4(_288.xy.x, _288.xy.y, shader_in[0].z, shader_in[0].w);
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
