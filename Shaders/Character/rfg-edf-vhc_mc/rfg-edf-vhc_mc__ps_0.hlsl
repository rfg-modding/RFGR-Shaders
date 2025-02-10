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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

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
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float4 _81 = r0;
    _81.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _81;
    float4 _86 = r0;
    _86.x = rsqrt(r0.x);
    r0 = _86;
    float3 _93 = r0.xxx * shader_in[2].xyz;
    r0 = float4(_93.x, _93.y, _93.z, r0.w);
    float4 _112 = r0;
    _112.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _112;
    float4 _117 = r0;
    _117.w = rsqrt(r0.w);
    r0 = _117;
    float3 _124 = r0.www * shader_in[3].xyz;
    r1 = float4(_124.x, _124.y, _124.z, r1.w);
    float4 _141 = r0;
    _141.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _141;
    float4 _149 = r2;
    _149.x = r0.w * asfloat(1077936128u);
    r2 = _149;
    float2 _161 = (r0.ww * asfloat(uint2(1077936128u, 1077936128u))) + asfloat(uint2(1065353216u, 3212836864u));
    r2 = float4(r2.x, _161.x, _161.y, r2.w);
    float3 _175 = clamp(abs(r2.xyz) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u)), 0.0f.xxx, 1.0f.xxx);
    r2 = float4(_175.x, _175.y, _175.z, r2.w);
    float3 _186 = (r2.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u))) + asfloat(uint3(0u, 1065353216u, 1065353216u));
    r2 = float4(_186.x, _186.y, _186.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].zwzz.xy);
    float3 _204 = r2.xyz * r3.xyz;
    r2 = float4(_204.x, _204.y, _204.z, r2.w);
    float3 _222 = r2.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_222.x, _222.y, _222.z, r3.w);
    float3 _238 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r2.xxx) + r3.xyz;
    r2 = float4(_238.x, _238.y, r2.z, _238.z);
    float3 _254 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r2.zzz) + r2.xyw;
    r2 = float4(_254.x, _254.y, _254.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _272 = (r3.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(r4.x, _272.x, _272.y, _272.z);
    float4 _281 = r3;
    _281.y = r3.y + r3.y;
    r3 = _281;
    float4 _288 = r4;
    _288.x = r4.w * r4.y;
    r4 = _288;
    float4 _300 = r0;
    _300.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _300;
    float4 _304 = r3;
    _304.x = r4.x;
    r3 = _304;
    float4 _311 = r0;
    _311.w = (-r0.w) + asfloat(1065353216u);
    r0 = _311;
    float4 _317 = r0;
    _317.w = max(r0.w, asfloat(0u));
    r0 = _317;
    float4 _322 = r3;
    _322.z = sqrt(r0.w);
    r3 = _322;
    float3 _329 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r3 = float4(_329.x, _329.y, _329.z, r3.w);
    float3 _341 = (cb2_m[5].z.xxx * r3.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r3 = float4(_341.x, _341.y, _341.z, r3.w);
    float4 _357 = r0;
    _357.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _357;
    float4 _362 = r0;
    _362.w = rsqrt(r0.w);
    r0 = _362;
    float3 _368 = r0.www * r3.xyz;
    r3 = float4(_368.x, _368.y, _368.z, r3.w);
    float4 _385 = r0;
    _385.w = clamp(mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    r0 = _385;
    float4 _392 = r0;
    _392.w = r0.w * r0.w;
    r0 = _392;
    float4 _399 = r0;
    _399.w = r0.w * r0.w;
    r0 = _399;
    float4 _406 = r0;
    _406.w = r0.w * r0.w;
    r0 = _406;
    r1 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].xyxx.xy);
    float4 _421 = r0;
    _421.w = r0.w * r1.y;
    r0 = _421;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float4 _436 = r2;
    _436.w = (-r1.w) + asfloat(1065353216u);
    r2 = _436;
    float4 _443 = r0;
    _443.w = r0.w * r2.w;
    r0 = _443;
    float3 _449 = r0.www * r2.xyz;
    r4 = float4(_449.x, _449.y, _449.z, r4.w);
    float2 _463 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r5 = float4(_463.x, _463.y, r5.z, r5.w);
    r5 = tex2D(SPIRV_Cross_Combinedt15s15, r5.xyxx.xy);
    float4 _479 = r2;
    _479.w = max(r5.y, asfloat(1028443341u));
    r2 = _479;
    float3 _485 = r2.www * r4.xyz;
    r4 = float4(_485.x, _485.y, _485.z, r4.w);
    float4 _502 = r0;
    _502.x = clamp(mad(r3.xyz.z, r0.xyz.z, mad(r3.xyz.y, r0.xyz.y, r3.xyz.x * r0.xyz.x)), 0.0f, 1.0f);
    r0 = _502;
    float4 _519 = r0;
    _519.y = mad(r3.xyz.z, shader_in[4].xyz.z, mad(r3.xyz.y, shader_in[4].xyz.y, r3.xyz.x * shader_in[4].xyz.x));
    r0 = _519;
    float4 _529 = r0;
    _529.y = clamp((r0.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _529;
    float4 _537 = r0;
    _537.z = r1.w * cb2_m[4].w;
    r0 = _537;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _561 = ((-r3.xyz) * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + r1.xyz;
    r1 = float4(_561.x, _561.y, _561.z, r1.w);
    float3 _574 = r3.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r6 = float4(_574.x, _574.y, _574.z, r6.w);
    float3 _585 = (r0.zzz * r1.xyz) + r6.xyz;
    r1 = float4(_585.x, _585.y, _585.z, r1.w);
    float3 _592 = r0.xxx * r1.xyz;
    r6 = float4(_592.x, _592.y, _592.z, r6.w);
    float3 _602 = (r2.xyz * r0.www) + r1.xyz;
    r0 = float4(_602.x, r0.y, _602.y, _602.z);
    float3 _612 = (r6.xyz * r5.yyy) + r4.xyz;
    r1 = float4(_612.x, _612.y, _612.z, r1.w);
    float3 _625 = r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_625.x, _625.y, _625.z, r1.w);
    float4 _634 = r1;
    _634.w = (r0.y * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _634;
    float4 _643 = r1;
    _643.w = abs(r1.w) + abs(r1.w);
    r1 = _643;
    float4 _653 = r1;
    _653.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _653;
    float4 _659 = r1;
    _659.w = max(r1.w, asfloat(0u));
    r1 = _659;
    float4 _668 = r1;
    _668.w = r1.w * cb0_m[7].y;
    r1 = _668;
    float3 _692 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_692.x, _692.y, _692.z, r2.w);
    float3 _708 = (r0.yyy * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_708.x, _708.y, _708.z, r2.w);
    float3 _722 = (-r2.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(_722.x, _722.y, _722.z, r4.w);
    float3 _732 = (r1.www * r4.xyz) + r2.xyz;
    r2 = float4(_732.x, _732.y, _732.z, r2.w);
    float3 _739 = r5.xxx * r2.xyz;
    r2 = float4(_739.x, _739.y, _739.z, r2.w);
    float3 _749 = (r2.xyz * r0.xzw) + r1.xyz;
    r0 = float4(_749.x, _749.y, _749.z, r0.w);
    float4 _758 = r0;
    _758.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _758;
    float3 _764 = r0.xyz * r0.www;
    r0 = float4(_764.x, _764.y, _764.z, r0.w);
    float3 _781 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_781.x, _781.y, _781.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _814 = gl_FragCoord;
    _814.w = 1.0f / _814.w;
    shader_in[0] = float4(_814.xy.x, _814.xy.y, shader_in[0].z, shader_in[0].w);
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
