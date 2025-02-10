cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float3 _67 = (-shader_in[3].xyz) + shader_in[4].xyz;
    r0 = float4(_67.x, _67.y, _67.z, r0.w);
    float4 _84 = r0;
    _84.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _84;
    float4 _89 = r0;
    _89.w = rsqrt(r0.w);
    r0 = _89;
    float3 _95 = r0.www * r0.xyz;
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float4 _114 = r0;
    _114.w = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _114;
    float4 _119 = r0;
    _119.w = rsqrt(r0.w);
    r0 = _119;
    float3 _129 = (shader_in[5].xyz * r0.www) + r0.xyz;
    r0 = float4(_129.x, _129.y, _129.z, r0.w);
    float4 _145 = r0;
    _145.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _145;
    float4 _150 = r0;
    _150.w = rsqrt(r0.w);
    r0 = _150;
    float3 _156 = r0.www * r0.xyz;
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _175 = r0;
    _175.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _175;
    float4 _180 = r0;
    _180.w = rsqrt(r0.w);
    r0 = _180;
    float3 _187 = r0.www * shader_in[2].xyz;
    r1 = float4(_187.x, _187.y, _187.z, r1.w);
    float4 _204 = r0;
    _204.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _204;
    float4 _211 = r0;
    _211.x = max(r0.x, asfloat(0u));
    r0 = _211;
    float4 _216 = r0;
    _216.x = log2(r0.x);
    r0 = _216;
    float4 _227 = r0;
    _227.x = r0.x * cb2_m[2].w;
    r0 = _227;
    float4 _232 = r0;
    _232.x = exp2(r0.x);
    r0 = _232;
    float4 _241 = r0;
    _241.x = r0.x * cb2_m[2].z;
    r0 = _241;
    float3 _253 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float4 _265 = r0;
    _265.w = (shader_in[5].w * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _265;
    float4 _274 = r0;
    _274.w = abs(r0.w) + abs(r0.w);
    r0 = _274;
    float4 _285 = r0;
    _285.w = ((-r0.w) * r0.w) + asfloat(1065353216u);
    r0 = _285;
    float4 _291 = r0;
    _291.w = max(r0.w, asfloat(0u));
    r0 = _291;
    float4 _300 = r0;
    _300.w = r0.w * cb0_m[7].y;
    r0 = _300;
    float3 _324 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    float3 _341 = (shader_in[5].www * r1.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_341.x, _341.y, _341.z, r1.w);
    float3 _355 = (-r1.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(_355.x, _355.y, _355.z, r2.w);
    float3 _366 = (r0.www * r2.xyz) + r1.xyz;
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    float2 _375 = shader_in[0].xy / shader_in[0].ww;
    r2 = float4(_375.x, _375.y, r2.z, r2.w);
    float2 _393 = (r2.xy * asfloat(uint2(1056964608u, 3204448256u))) + float2(cb0_m[6].x, cb0_m[6].y);
    r2 = float4(_393.x, _393.y, r2.z, r2.w);
    float2 _400 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    r2 = float4(_400.x, _400.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _415 = r1.xyz * r2.xxx;
    r1 = float4(_415.x, _415.y, _415.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _437 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float3 _447 = (r1.xyz * r2.xyz) + r0.xyz;
    r0 = float4(_447.x, _447.y, _447.z, r0.w);
    float4 _456 = r0;
    _456.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _456;
    float3 _462 = r0.xyz * r0.www;
    r0 = float4(_462.x, _462.y, _462.z, r0.w);
    float3 _479 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_479.x, _479.y, _479.z, r0.w);
    float2 _491 = shader_in[1].xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_491.x, _491.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r1.xyxx.xy);
    float4 _506 = r1;
    _506.x = max(r1.y, asfloat(1036831949u));
    r1 = _506;
    float4 _513 = r1;
    _513.x = (-r1.x) + asfloat(1065353216u);
    r1 = _513;
    float4 _520 = r0;
    _520.w = max(r1.x, r2.w);
    r0 = _520;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _538 = o0;
    _538.w = min(r0.w, asfloat(1065353216u));
    o0 = _538;
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _562 = gl_FragCoord;
    _562.w = 1.0f / _562.w;
    shader_in[0] = float4(_562.xyw.x, _562.xyw.y, shader_in[0].z, _562.xyw.z);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
