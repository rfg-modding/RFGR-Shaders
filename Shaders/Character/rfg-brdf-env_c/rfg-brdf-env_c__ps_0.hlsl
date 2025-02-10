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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _85 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _85.x, _85.y, _85.z);
    float4 _94 = r0;
    _94.y = r0.y + r0.y;
    r0 = _94;
    float4 _101 = r1;
    _101.x = r1.w * r1.y;
    r1 = _101;
    float4 _113 = r0;
    _113.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _113;
    float4 _117 = r0;
    _117.x = r1.x;
    r0 = _117;
    float4 _125 = r0;
    _125.w = (-r0.w) + asfloat(1065353216u);
    r0 = _125;
    float4 _132 = r0;
    _132.w = max(r0.w, asfloat(0u));
    r0 = _132;
    float4 _137 = r0;
    _137.z = sqrt(r0.w);
    r0 = _137;
    float3 _144 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float3 _161 = (cb2_m[7].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float3 _219 = r0.www * shader_in[1].xyz;
    r1 = float4(_219.x, _219.y, _219.z, r1.w);
    float4 _238 = r0;
    _238.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _238;
    float4 _243 = r0;
    _243.w = rsqrt(r0.w);
    r0 = _243;
    float3 _253 = (shader_in[2].xyz * r0.www) + r1.xyz;
    r2 = float4(_253.x, _253.y, _253.z, r2.w);
    float4 _270 = r1;
    _270.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _270;
    float3 _277 = r0.www * shader_in[2].xyz;
    r1 = float4(r1.x, _277.x, _277.y, _277.z);
    float4 _293 = r0;
    _293.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _293;
    float4 _299 = r0;
    _299.w = max(r0.w, asfloat(0u));
    r0 = _299;
    float4 _307 = r3;
    _307.y = (-r0.w) + asfloat(1065353216u);
    r3 = _307;
    float4 _322 = r0;
    _322.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _322;
    float4 _327 = r0;
    _327.w = rsqrt(r0.w);
    r0 = _327;
    float3 _333 = r0.www * r2.xyz;
    r1 = float4(r1.x, _333.x, _333.y, _333.z);
    float4 _349 = r0;
    _349.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _349;
    float4 _366 = r0;
    _366.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _366;
    float4 _378 = r0;
    _378.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _378;
    float4 _384 = r0;
    _384.y = max(r0.w, asfloat(0u));
    r0 = _384;
    float4 _391 = r2;
    _391.y = (-r0.y) + asfloat(1065353216u);
    r2 = _391;
    float4 _397 = r2;
    _397.x = max(r1.x, asfloat(0u));
    r2 = _397;
    float4 _405 = r3;
    _405.x = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _405;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _433 = r2.xyz * r3.xyz;
    r0 = float4(r0.x, _433.x, _433.y, _433.z);
    float3 _447 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_447.x, _447.y, _447.z, r2.w);
    float3 _460 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _477 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_477.x, _477.y, _477.z, r4.w);
    float3 _488 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_488.x, _488.y, _488.z, r2.w);
    float3 _502 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_502.x, _502.y, _502.z, r3.w);
    float3 _518 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _518.x, _518.y, _518.z);
    float3 _528 = (r2.xyz * r0.yzw) + r3.xyz;
    r0 = float4(r0.x, _528.x, _528.y, _528.z);
    float3 _538 = r0.yzw * cb2_m[8].x.xxx;
    r0 = float4(r0.x, _538.x, _538.y, _538.z);
    r2 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[4].zwzz.xy);
    float4 _558 = r1;
    _558.w = ((-r2.w) * cb2_m[7].z) + asfloat(1065353216u);
    r1 = _558;
    float3 _564 = r0.yzw * r1.www;
    r0 = float4(r0.x, _564.x, _564.y, _564.z);
    float2 _577 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_577.x, _577.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float4 _592 = r1;
    _592.w = max(r3.y, asfloat(1028443341u));
    r1 = _592;
    float3 _598 = r0.yzw * r1.www;
    r0 = float4(r0.x, _598.x, _598.y, _598.z);
    float3 _611 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r4 = float4(_611.x, _611.y, _611.z, r4.w);
    float3 _624 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r5 = float4(_624.x, _624.y, _624.z, r5.w);
    float3 _641 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_641.x, _641.y, r1.z, _641.z);
    float3 _651 = (r4.xyz * r1.xyw) + r5.xyz;
    r1 = float4(_651.x, _651.y, r1.z, _651.z);
    float3 _664 = r1.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_664.x, _664.y, _664.z, r4.w);
    float3 _680 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r5 = float4(_680.x, _680.y, _680.z, r5.w);
    float3 _690 = (r1.xyw * r5.xyz) + r4.xyz;
    r1 = float4(_690.x, _690.y, _690.z, r1.w);
    float4 _699 = r1;
    _699.w = r2.w * cb2_m[7].z;
    r1 = _699;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _723 = ((-r4.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r2.xyz;
    r2 = float4(_723.x, _723.y, _723.z, r2.w);
    float3 _736 = r4.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r5 = float4(_736.x, _736.y, _736.z, r5.w);
    float3 _746 = (r1.www * r2.xyz) + r5.xyz;
    r2 = float4(_746.x, _746.y, _746.z, r2.w);
    float3 _753 = r1.xyz * r2.xyz;
    r1 = float4(_753.x, _753.y, _753.z, r1.w);
    float3 _763 = (r1.xyz * r3.yyy) + r0.yzw;
    r0 = float4(r0.x, _763.x, _763.y, _763.z);
    float3 _776 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _776.x, _776.y, _776.z);
    float4 _785 = r1;
    _785.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _785;
    float4 _794 = r1;
    _794.x = abs(r1.x) + abs(r1.x);
    r1 = _794;
    float4 _804 = r1;
    _804.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _804;
    float4 _810 = r1;
    _810.x = max(r1.x, asfloat(0u));
    r1 = _810;
    float4 _818 = r1;
    _818.x = r1.x * cb0_m[7].y;
    r1 = _818;
    float3 _842 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _842.x, _842.y, _842.z);
    float3 _858 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _858.x, _858.y, _858.z);
    float3 _872 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(r3.x, _872.x, _872.y, _872.z);
    float3 _882 = (r1.xxx * r3.yzw) + r1.yzw;
    r1 = float4(_882.x, _882.y, _882.z, r1.w);
    float3 _889 = r3.xxx * r1.xyz;
    r1 = float4(_889.x, _889.y, _889.z, r1.w);
    float3 _899 = (r1.xyz * r2.xyz) + r0.yzw;
    r0 = float4(_899.x, _899.y, _899.z, r0.w);
    float4 _908 = r0;
    _908.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _908;
    float3 _914 = r0.xyz * r0.www;
    r0 = float4(_914.x, _914.y, _914.z, r0.w);
    float3 _931 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r4 = float4(_931.x, _931.y, _931.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _960 = gl_FragCoord;
    _960.w = 1.0f / _960.w;
    shader_in[0] = float4(_960.xy.x, _960.xy.y, shader_in[0].z, shader_in[0].w);
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
