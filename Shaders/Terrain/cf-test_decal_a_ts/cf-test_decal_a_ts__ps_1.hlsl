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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _68 = r0;
    _68.x = mad(shader_in[6].xyz.z, shader_in[6].xyz.z, mad(shader_in[6].xyz.y, shader_in[6].xyz.y, shader_in[6].xyz.x * shader_in[6].xyz.x));
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
    float3 _106 = r0.yyy * shader_in[6].xyz;
    r0 = float4(r0.x, _106.x, _106.y, _106.z);
    float3 _111 = -r0.yzw;
    float4 _126 = r1;
    _126.x = mad(_111.z, shader_in[5].xyz.z, mad(_111.y, shader_in[5].xyz.y, _111.x * shader_in[5].xyz.x));
    r1 = _126;
    float4 _135 = r1;
    _135.x = min(r1.x, cb1_m[2].x);
    r1 = _135;
    float4 _144 = r1;
    _144.x = r1.x + (-cb1_m[2].y);
    r1 = _144;
    float4 _150 = r1;
    _150.x = max(r1.x, asfloat(0u));
    r1 = _150;
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
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _208 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _208.x, _208.y, _208.z);
    float4 _217 = r1;
    _217.y = r1.y + r1.y;
    r1 = _217;
    float4 _224 = r2;
    _224.x = r2.w * r2.y;
    r2 = _224;
    float4 _236 = r1;
    _236.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _236;
    float4 _240 = r1;
    _240.x = r2.x;
    r1 = _240;
    float4 _247 = r1;
    _247.w = (-r1.w) + asfloat(1065353216u);
    r1 = _247;
    float4 _253 = r1;
    _253.w = max(r1.w, asfloat(0u));
    r1 = _253;
    float4 _258 = r1;
    _258.z = sqrt(r1.w);
    r1 = _258;
    float3 _265 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_265.x, _265.y, _265.z, r1.w);
    float3 _277 = (cb2_m[1].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_277.x, _277.y, _277.z, r1.w);
    float4 _293 = r1;
    _293.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _293;
    float4 _298 = r1;
    _298.w = rsqrt(r1.w);
    r1 = _298;
    float3 _304 = r1.www * r1.xyz;
    r1 = float4(_304.x, _304.y, _304.z, r1.w);
    float4 _321 = r0;
    _321.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _321;
    float4 _328 = r0;
    _328.x = r0.x * r0.y;
    r0 = _328;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _348 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _348.x, _348.y, _348.z);
    float3 _355 = r0.yzw * r0.xxx;
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    float3 _368 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_368.x, _368.y, _368.z, r0.w);
    float3 _377 = r0.xyz * shader_in[4].xyz;
    r0 = float4(_377.x, _377.y, _377.z, r0.w);
    float4 _386 = r0;
    _386.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _386;
    float3 _392 = r0.xyz * r0.www;
    r0 = float4(_392.x, _392.y, _392.z, r0.w);
    float4 _398 = r0;
    _398.w = shader_in[6].w;
    r0 = _398;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
