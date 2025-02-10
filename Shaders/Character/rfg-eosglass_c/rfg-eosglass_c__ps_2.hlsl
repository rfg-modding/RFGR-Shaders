cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform samplerCUBE SPIRV_Cross_Combinedt2s2;

static float3 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _72 = r0;
    _72.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _72;
    float4 _82 = r0;
    _82.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _82;
    float4 _92 = r0;
    _92.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _92;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float2 _111 = shader_in[4].xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_111.x, _111.y, r0.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _129 = r2;
    _129.y = r1.y + r1.y;
    r2 = _129;
    float3 _141 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _141.x, _141.y, _141.z);
    float4 _149 = r1;
    _149.x = r1.w * r1.y;
    r1 = _149;
    float4 _161 = r0;
    _161.z = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _161;
    float4 _168 = r0;
    _168.z = (-r0.z) + asfloat(1065353216u);
    r0 = _168;
    float4 _174 = r0;
    _174.z = max(r0.z, asfloat(0u));
    r0 = _174;
    float4 _179 = r2;
    _179.z = sqrt(r0.z);
    r2 = _179;
    float4 _183 = r2;
    _183.x = r1.x;
    r2 = _183;
    float3 _190 = r2.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_190.x, _190.y, _190.z, r1.w);
    float3 _202 = (cb2_m[1].z.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_202.x, _202.y, _202.z, r1.w);
    float4 _218 = r0;
    _218.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _218;
    float4 _223 = r0;
    _223.z = rsqrt(r0.z);
    r0 = _223;
    float3 _229 = r0.zzz * r1.xyz;
    r2 = float4(_229.x, _229.y, _229.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].zwzz.xy);
    float3 _245 = r3.www * r3.xyz;
    r3 = float4(_245.x, _245.y, _245.z, r3.w);
    float4 _253 = r0;
    _253.w = (-r3.w) + asfloat(1065353216u);
    r0 = _253;
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float2 _272 = (r1.xy * r0.zz) + shader_in[3].xy;
    r0 = float4(_272.x, _272.y, r0.z, r0.w);
    float4 _278 = r0;
    _278.z = shader_in[3].z;
    r0 = _278;
    float4 _293 = r1;
    _293.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _293;
    float4 _298 = r1;
    _298.x = rsqrt(r1.x);
    r1 = _298;
    float3 _304 = r0.xyz * r1.xxx;
    r0 = float4(_304.x, _304.y, _304.z, r0.w);
    r1 = texCUBE(SPIRV_Cross_Combinedt2s2, r0.xyzx.xyz);
    float3 _319 = r4.xyz * r1.xyz;
    r0 = float4(_319.x, _319.y, _319.z, r0.w);
    float3 _326 = r0.www * r0.xyz;
    r0 = float4(_326.x, _326.y, _326.z, r0.w);
    float4 _345 = r1;
    _345.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _345;
    float4 _350 = r1;
    _350.x = rsqrt(r1.x);
    r1 = _350;
    float3 _357 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_357.x, _357.y, _357.z, r1.w);
    float4 _376 = r1;
    _376.w = clamp(mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _376;
    float4 _384 = r0;
    _384.w = r0.w * cb2_m[1].w;
    r0 = _384;
    float4 _401 = r2;
    _401.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r2 = _401;
    float4 _406 = r2;
    _406.w = rsqrt(r2.w);
    r2 = _406;
    float3 _416 = (shader_in[1].xyz * r2.www) + r1.xyz;
    r1 = float4(_416.x, _416.y, _416.z, r1.w);
    float4 _432 = r2;
    _432.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r2 = _432;
    float4 _437 = r2;
    _437.w = rsqrt(r2.w);
    r2 = _437;
    float3 _443 = r1.xyz * r2.www;
    r1 = float4(_443.x, _443.y, _443.z, r1.w);
    float4 _460 = r1;
    _460.x = clamp(mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _460;
    float4 _468 = r1;
    _468.y = cb2_m[2].x + asfloat(925353388u);
    r1 = _468;
    float4 _473 = r1;
    _473.x = log2(r1.x);
    r1 = _473;
    float4 _480 = r1;
    _480.x = r1.x * r1.y;
    r1 = _480;
    float4 _485 = r1;
    _485.x = exp2(r1.x);
    r1 = _485;
    float4 _492 = r0;
    _492.w = r0.w * r1.x;
    r0 = _492;
    float3 _504 = r0.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_504.x, _504.y, _504.z, r1.w);
    float3 _517 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_517.x, _517.y, _517.z, r0.w);
    float3 _527 = (r3.xyz * r1.www) + r1.xyz;
    r1 = float4(_527.x, _527.y, _527.z, r1.w);
    float3 _543 = (r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r0.xyz;
    o0 = float4(_543.x, _543.y, _543.z, o0.w);
    float4 _547 = o0;
    _547.w = asfloat(1065353216u);
    o0 = _547;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
