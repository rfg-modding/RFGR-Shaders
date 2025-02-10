cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].zwzz.xy);
    float2 _68 = r0.xy * r1.xy;
    r0 = float4(_68.x, _68.y, r0.z, r0.w);
    float2 _77 = r0.xy * shader_in[5].yy;
    r0 = float4(_77.x, _77.y, r0.z, r0.w);
    float2 _90 = (r0.xy * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_90.x, _90.y, r0.z, r0.w);
    float2 _103 = (r0.xy * asfloat(uint2(1050253722u, 1050253722u))) + shader_in[1].xy;
    r0 = float4(_103.x, _103.y, r0.z, r0.w);
    float4 _108 = r0;
    _108.z = asfloat(0u);
    r0 = _108;
    float3 _117 = (-r0.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    r1 = float4(_117.x, _117.y, _117.z, r1.w);
    float4 _127 = r0;
    _127.w = shader_in[2].w + asfloat(3189348762u);
    r0 = _127;
    float2 _140 = clamp(r0.ww * asfloat(uint2(1082130432u, 1066833559u)), 0.0f.xx, 1.0f.xx);
    r2 = float4(_140.x, _140.y, r2.z, r2.w);
    float3 _151 = (r2.yyy * r1.xyz) + r0.xyz;
    r0 = float4(_151.x, _151.y, _151.z, r0.w);
    float3 _160 = r0.xyz + (-shader_in[1].xyz);
    r0 = float4(_160.x, _160.y, _160.z, r0.w);
    float3 _171 = (r2.xxx * r0.xyz) + shader_in[1].xyz;
    r0 = float4(_171.x, _171.y, _171.z, r0.w);
    float3 _180 = r0.xyz + asfloat(uint3(3204448256u, 3204448256u, 2147483648u));
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float4 _191 = r0;
    _191.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _191;
    float4 _198 = r1;
    _198.x = r0.w * r0.w;
    r1 = _198;
    float4 _205 = r1;
    _205.x = r1.x * r1.x;
    r1 = _205;
    float4 _214 = r1;
    _214.x = clamp(r1.x * shader_in[5].x, 0.0f, 1.0f);
    r1 = _214;
    float3 _222 = (r1.xxx * r0.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    r0 = float4(_222.x, _222.y, _222.z, r0.w);
    float4 _231 = r1;
    _231.y = (-shader_in[5].z) + asfloat(1065353216u);
    r1 = _231;
    float3 _237 = r0.xyz * r1.yyy;
    r0 = float4(_237.x, _237.y, _237.z, r0.w);
    float3 _258 = (shader_in[5].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r2 = float4(_258.x, _258.y, _258.z, r2.w);
    float4 _277 = r0;
    _277.x = clamp(mad(shader_in[2].xyz.z, shader_in[3].xyz.z, mad(shader_in[2].xyz.y, shader_in[3].xyz.y, shader_in[2].xyz.x * shader_in[3].xyz.x)), 0.0f, 1.0f);
    r0 = _277;
    float4 _284 = r0;
    _284.x = (-r0.x) + asfloat(1065353216u);
    r0 = _284;
    float4 _296 = r0;
    _296.x = mad(r0.xx.y, r0.xx.y, r0.xx.x * r0.xx.x);
    r0 = _296;
    float4 _302 = r0;
    _302.x = min(r0.x, asfloat(1065353216u));
    r0 = _302;
    float4 _309 = r0;
    _309.x = r0.x * r1.x;
    r0 = _309;
    float4 _316 = r2;
    _316.w = r0.w * r0.x;
    r2 = _316;
    o0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
