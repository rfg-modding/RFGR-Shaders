cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float3 _59 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float3 _67 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _78 = r0;
    _78.x = mad(_59.z, _67.z, mad(_59.y, _67.y, _59.x * _67.x));
    r0 = _78;
    float4 _83 = r0;
    _83.x = rsqrt(r0.x);
    r0 = _83;
    float3 _95 = r0.xxx * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float4 _114 = r0;
    _114.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _114;
    float4 _119 = r0;
    _119.w = rsqrt(r0.w);
    r0 = _119;
    float3 _126 = r0.www * shader_in[2].xyz;
    r1 = float4(_126.x, _126.y, _126.z, r1.w);
    float4 _143 = r0;
    _143.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _143;
    float4 _152 = r0;
    _152.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _152;
    r1 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r0 = (r0.xxxx * r1) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _212 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_212.x, _212.y, _212.z, r2.w);
    float3 _237 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r1 = float4(_237.x, _237.y, _237.z, r1.w);
    float4 _246 = r3;
    _246.w = r0.w * r1.w;
    r3 = _246;
    float3 _258 = (cb2_m[6].x.xxx * r1.xyz) + r2.xyz;
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _265 = r0.xyz * r1.xyz;
    r0 = float4(_265.x, _265.y, _265.z, r0.w);
    float4 _275 = r0;
    _275.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _275;
    float3 _281 = r0.xyz * r0.www;
    r0 = float4(_281.x, _281.y, _281.z, r0.w);
    float3 _299 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_299.x, _299.y, _299.z, r3.w);
    r0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _318 = r0.www * r0.xyz;
    r0 = float4(_318.x, _318.y, _318.z, r0.w);
    o0 = min(r0, asfloat(uint4(1107296256u, 1107296256u, 1107296256u, 1107296256u)));
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
