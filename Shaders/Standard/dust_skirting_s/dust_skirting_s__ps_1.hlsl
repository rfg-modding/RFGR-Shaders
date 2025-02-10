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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _77 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _77.x, _77.y, _77.z);
    float4 _86 = r0;
    _86.y = r0.y + r0.y;
    r0 = _86;
    float4 _93 = r1;
    _93.x = r1.w * r1.y;
    r1 = _93;
    float4 _105 = r0;
    _105.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _105;
    float4 _109 = r0;
    _109.x = r1.x;
    r0 = _109;
    float4 _117 = r0;
    _117.w = (-r0.w) + asfloat(1065353216u);
    r0 = _117;
    float4 _124 = r0;
    _124.w = max(r0.w, asfloat(0u));
    r0 = _124;
    float4 _129 = r0;
    _129.z = sqrt(r0.w);
    r0 = _129;
    float3 _136 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_136.x, _136.y, _136.z, r0.w);
    float3 _151 = (cb2_m[1].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_151.x, _151.y, _151.z, r0.w);
    float4 _167 = r0;
    _167.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _167;
    float4 _172 = r0;
    _172.w = rsqrt(r0.w);
    r0 = _172;
    float3 _178 = r0.www * r0.xyz;
    r0 = float4(_178.x, _178.y, _178.z, r0.w);
    float4 _197 = r0;
    _197.w = mad(shader_in[4].xyz.z, shader_in[4].xyz.z, mad(shader_in[4].xyz.y, shader_in[4].xyz.y, shader_in[4].xyz.x * shader_in[4].xyz.x));
    r0 = _197;
    float4 _202 = r0;
    _202.w = rsqrt(r0.w);
    r0 = _202;
    float3 _209 = r0.www * shader_in[4].xyz;
    r1 = float4(_209.x, _209.y, _209.z, r1.w);
    float4 _225 = r0;
    _225.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _225;
    float4 _231 = r0;
    _231.x = max(r0.x, asfloat(0u));
    r0 = _231;
    float3 _243 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_243.x, _243.y, _243.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _264 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_264.x, _264.y, _264.z, r1.w);
    float3 _271 = r0.xyz * r1.xyz;
    r0 = float4(_271.x, _271.y, _271.z, r0.w);
    float2 _285 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_285.x, _285.y, r1.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _300 = r0.xyz * r2.yyy;
    r0 = float4(_300.x, _300.y, _300.z, r0.w);
    float4 _309 = r0;
    _309.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _309;
    float3 _315 = r0.xyz * r0.www;
    r0 = float4(_315.x, _315.y, _315.z, r0.w);
    float4 _334 = r1;
    _334.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _334;
    float4 _339 = r1;
    _339.x = rsqrt(r1.x);
    r1 = _339;
    float4 _347 = r1;
    _347.x = r1.x * shader_in[2].z;
    r1 = _347;
    float4 _363 = r1;
    _363.x = clamp((r1.x * shader_in[3].x) + shader_in[3].y, 0.0f, 1.0f);
    r1 = _363;
    float4 _378 = r1;
    _378.y = clamp((abs(shader_in[2].w) * shader_in[3].z) + shader_in[3].w, 0.0f, 1.0f);
    r1 = _378;
    float4 _385 = r1;
    _385.y = (-r1.y) + asfloat(1065353216u);
    r1 = _385;
    float4 _392 = r1;
    _392.x = r1.y * r1.x;
    r1 = _392;
    float4 _399 = r0;
    _399.w = r1.x * r1.w;
    r0 = _399;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _425 = gl_FragCoord;
    _425.w = 1.0f / _425.w;
    shader_in[0] = float4(_425.xy.x, _425.xy.y, shader_in[0].z, shader_in[0].w);
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
