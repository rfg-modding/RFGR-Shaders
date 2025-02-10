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
    float2 _63 = r0.xy * r1.xy;
    r0 = float4(_63.x, _63.y, r0.z, r0.w);
    float2 _72 = r0.xy * shader_in[5].yy;
    r0 = float4(_72.x, _72.y, r0.z, r0.w);
    float2 _85 = (r0.xy * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_85.x, _85.y, r0.z, r0.w);
    float2 _98 = (r0.xy * asfloat(uint2(1050253722u, 1050253722u))) + shader_in[1].xy;
    r0 = float4(_98.x, _98.y, r0.z, r0.w);
    float4 _103 = r0;
    _103.z = asfloat(0u);
    r0 = _103;
    float3 _112 = (-r0.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    r1 = float4(_112.x, _112.y, _112.z, r1.w);
    float4 _122 = r0;
    _122.w = shader_in[2].w + asfloat(3189348762u);
    r0 = _122;
    float2 _135 = clamp(r0.ww * asfloat(uint2(1082130432u, 1066833559u)), 0.0f.xx, 1.0f.xx);
    r2 = float4(_135.x, _135.y, r2.z, r2.w);
    float3 _146 = (r2.yyy * r1.xyz) + r0.xyz;
    r0 = float4(_146.x, _146.y, _146.z, r0.w);
    float3 _155 = r0.xyz + (-shader_in[1].xyz);
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float3 _166 = (r2.xxx * r0.xyz) + shader_in[1].xyz;
    r0 = float4(_166.x, _166.y, _166.z, r0.w);
    float3 _175 = r0.xyz + asfloat(uint3(3204448256u, 3204448256u, 2147483648u));
    r0 = float4(_175.x, _175.y, _175.z, r0.w);
    float4 _186 = r0;
    _186.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _186;
    float4 _193 = r1;
    _193.x = r0.w * r0.w;
    r1 = _193;
    float4 _200 = r1;
    _200.x = r1.x * r1.x;
    r1 = _200;
    float4 _209 = r1;
    _209.x = clamp(r1.x * shader_in[5].x, 0.0f, 1.0f);
    r1 = _209;
    float3 _217 = (r1.xxx * r0.xyz) + asfloat(uint3(1056964608u, 1056964608u, 0u));
    r0 = float4(_217.x, _217.y, _217.z, r0.w);
    float4 _226 = r1;
    _226.y = (-shader_in[5].z) + asfloat(1065353216u);
    r1 = _226;
    float3 _232 = r0.xyz * r1.yyy;
    r2 = float4(_232.x, _232.y, _232.z, r2.w);
    float4 _251 = r0;
    _251.x = clamp(mad(shader_in[2].xyz.z, shader_in[3].xyz.z, mad(shader_in[2].xyz.y, shader_in[3].xyz.y, shader_in[2].xyz.x * shader_in[3].xyz.x)), 0.0f, 1.0f);
    r0 = _251;
    float4 _258 = r0;
    _258.x = (-r0.x) + asfloat(1065353216u);
    r0 = _258;
    float4 _270 = r0;
    _270.x = mad(r0.xx.y, r0.xx.y, r0.xx.x * r0.xx.x);
    r0 = _270;
    float4 _276 = r0;
    _276.x = min(r0.x, asfloat(1065353216u));
    r0 = _276;
    float4 _283 = r0;
    _283.x = r0.x * r1.x;
    r0 = _283;
    float4 _290 = r2;
    _290.w = r0.w * r0.x;
    r2 = _290;
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
