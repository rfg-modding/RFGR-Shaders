cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _71 = r0;
    _71.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _71;
    float4 _76 = r0;
    _76.y = rsqrt(r0.x);
    r0 = _76;
    float4 _81 = r0;
    _81.x = sqrt(r0.x);
    r0 = _81;
    float4 _102 = r0;
    _102.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _102;
    float3 _109 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _109.x, _109.y, _109.z);
    float3 _114 = -r0.yzw;
    float4 _129 = r1;
    _129.x = mad(_114.z, shader_in[3].xyz.z, mad(_114.y, shader_in[3].xyz.y, _114.x * shader_in[3].xyz.x));
    r1 = _129;
    float4 _137 = r1;
    _137.x = min(r1.x, cb1_m[2].x);
    r1 = _137;
    float4 _146 = r1;
    _146.x = r1.x + (-cb1_m[2].y);
    r1 = _146;
    float4 _152 = r1;
    _152.x = max(r1.x, asfloat(0u));
    r1 = _152;
    float4 _161 = r1;
    _161.x = r1.x * cb1_m[2].z;
    r1 = _161;
    float4 _172 = r1;
    _172.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _172;
    float4 _183 = r1;
    _183.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _183;
    float4 _190 = r0;
    _190.x = r0.x * r1.x;
    r0 = _190;
    float2 _202 = shader_in[4].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_202.x, _202.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r1.xyxx.xy);
    float3 _223 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _223.x, _223.y, _223.z);
    float4 _232 = r1;
    _232.y = r1.y + r1.y;
    r1 = _232;
    float4 _239 = r2;
    _239.x = r2.w * r2.y;
    r2 = _239;
    float4 _251 = r1;
    _251.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _251;
    float4 _255 = r1;
    _255.x = r2.x;
    r1 = _255;
    float4 _262 = r1;
    _262.w = (-r1.w) + asfloat(1065353216u);
    r1 = _262;
    float4 _268 = r1;
    _268.w = max(r1.w, asfloat(0u));
    r1 = _268;
    float4 _273 = r1;
    _273.z = sqrt(r1.w);
    r1 = _273;
    float3 _280 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float3 _292 = (cb2_m[2].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_292.x, _292.y, _292.z, r1.w);
    float4 _308 = r1;
    _308.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _308;
    float4 _313 = r1;
    _313.w = rsqrt(r1.w);
    r1 = _313;
    float3 _319 = r1.www * r1.xyz;
    r1 = float4(_319.x, _319.y, _319.z, r1.w);
    float4 _336 = r0;
    _336.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _336;
    float4 _343 = r0;
    _343.x = r0.x * r0.y;
    r0 = _343;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _363 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _363.x, _363.y, _363.z);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float4 _380 = r1;
    _380.w = r2.w * cb2_m[1].x;
    r1 = _380;
    float3 _396 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r1 = float4(_396.x, _396.y, _396.z, r1.w);
    float3 _406 = (r1.www * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _406.x, _406.y, _406.z);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _422 = (-r0.yzw) + r1.xyz;
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
    float4 _431 = r1;
    _431.w = r1.w * cb2_m[1].w;
    r1 = _431;
    float3 _440 = (r1.www * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _440.x, _440.y, _440.z);
    float3 _447 = r0.yzw * r0.xxx;
    r0 = float4(_447.x, _447.y, _447.z, r0.w);
    float3 _460 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_460.x, _460.y, _460.z, r0.w);
    float4 _469 = r0;
    _469.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _469;
    float3 _475 = r0.xyz * r0.www;
    r0 = float4(_475.x, _475.y, _475.z, r0.w);
    float4 _479 = r0;
    _479.w = asfloat(1065353216u);
    r0 = _479;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
