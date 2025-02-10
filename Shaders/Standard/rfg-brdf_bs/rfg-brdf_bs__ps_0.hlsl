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
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _84 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _84.x, _84.y, _84.z);
    float4 _93 = r0;
    _93.y = r0.y + r0.y;
    r0 = _93;
    float4 _100 = r1;
    _100.x = r1.w * r1.y;
    r1 = _100;
    float4 _112 = r0;
    _112.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _112;
    float4 _116 = r0;
    _116.x = r1.x;
    r0 = _116;
    float4 _124 = r0;
    _124.w = (-r0.w) + asfloat(1065353216u);
    r0 = _124;
    float4 _131 = r0;
    _131.w = max(r0.w, asfloat(0u));
    r0 = _131;
    float4 _136 = r0;
    _136.z = sqrt(r0.w);
    r0 = _136;
    float3 _143 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float3 _160 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_160.x, _160.y, _160.z, r0.w);
    float4 _176 = r0;
    _176.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _176;
    float4 _181 = r0;
    _181.w = rsqrt(r0.w);
    r0 = _181;
    float3 _187 = r0.www * r0.xyz;
    r0 = float4(_187.x, _187.y, _187.z, r0.w);
    float4 _206 = r0;
    _206.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.w = rsqrt(r0.w);
    r0 = _211;
    float3 _218 = r0.www * shader_in[2].xyz;
    r1 = float4(_218.x, _218.y, _218.z, r1.w);
    float4 _237 = r0;
    _237.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _237;
    float4 _242 = r0;
    _242.w = rsqrt(r0.w);
    r0 = _242;
    float3 _252 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_252.x, _252.y, _252.z, r2.w);
    float4 _269 = r1;
    _269.x = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r1 = _269;
    float3 _276 = r0.www * shader_in[3].xyz;
    r1 = float4(r1.x, _276.x, _276.y, _276.z);
    float4 _292 = r0;
    _292.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _292;
    float4 _298 = r0;
    _298.w = max(r0.w, asfloat(0u));
    r0 = _298;
    float4 _306 = r3;
    _306.y = (-r0.w) + asfloat(1065353216u);
    r3 = _306;
    float4 _321 = r0;
    _321.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _321;
    float4 _326 = r0;
    _326.w = rsqrt(r0.w);
    r0 = _326;
    float3 _332 = r0.www * r2.xyz;
    r1 = float4(r1.x, _332.x, _332.y, _332.z);
    float4 _348 = r0;
    _348.w = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _348;
    float4 _365 = r0;
    _365.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _365;
    float4 _377 = r0;
    _377.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _377;
    float4 _383 = r0;
    _383.y = max(r0.w, asfloat(0u));
    r0 = _383;
    float4 _390 = r2;
    _390.y = (-r0.y) + asfloat(1065353216u);
    r2 = _390;
    float4 _396 = r2;
    _396.x = max(r1.x, asfloat(0u));
    r2 = _396;
    float4 _404 = r3;
    _404.x = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _404;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _432 = r2.xyz * r3.xyz;
    r0 = float4(r0.x, _432.x, _432.y, _432.z);
    float3 _445 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _458 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _475 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_475.x, _475.y, _475.z, r4.w);
    float3 _486 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_486.x, _486.y, _486.z, r2.w);
    float3 _500 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_500.x, _500.y, _500.z, r3.w);
    float3 _516 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _516.x, _516.y, _516.z);
    float3 _526 = (r2.xyz * r0.yzw) + r3.xyz;
    r0 = float4(r0.x, _526.x, _526.y, _526.z);
    float3 _536 = r0.yzw * cb2_m[8].y.xxx;
    r0 = float4(r0.x, _536.x, _536.y, _536.z);
    float2 _550 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_550.x, _550.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _565 = r1;
    _565.w = max(r2.y, asfloat(1028443341u));
    r1 = _565;
    float3 _571 = r0.yzw * r1.www;
    r0 = float4(r0.x, _571.x, _571.y, _571.z);
    float3 _584 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_584.x, _584.y, _584.z, r3.w);
    float3 _597 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_597.x, _597.y, _597.z, r4.w);
    float3 _613 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_613.x, _613.y, r1.z, _613.z);
    float3 _623 = (r3.xyz * r1.xyw) + r4.xyz;
    r1 = float4(_623.x, _623.y, r1.z, _623.z);
    float3 _636 = r1.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_636.x, _636.y, _636.z, r3.w);
    float3 _652 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_652.x, _652.y, _652.z, r4.w);
    float3 _662 = (r1.xyw * r4.xyz) + r3.xyz;
    r1 = float4(_662.x, _662.y, _662.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _683 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r3 = float4(_683.x, _683.y, _683.z, r3.w);
    float3 _690 = r1.xyz * r3.xyz;
    r1 = float4(_690.x, _690.y, _690.z, r1.w);
    float3 _700 = (r1.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _700.x, _700.y, _700.z);
    float3 _713 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _713.x, _713.y, _713.z);
    float4 _722 = r1;
    _722.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _722;
    float4 _731 = r1;
    _731.x = abs(r1.x) + abs(r1.x);
    r1 = _731;
    float4 _741 = r1;
    _741.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _741;
    float4 _747 = r1;
    _747.x = max(r1.x, asfloat(0u));
    r1 = _747;
    float4 _755 = r1;
    _755.x = r1.x * cb0_m[7].y;
    r1 = _755;
    float3 _779 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _779.x, _779.y, _779.z);
    float3 _795 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _795.x, _795.y, _795.z);
    float3 _809 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _809.x, _809.y, _809.z);
    float3 _819 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_819.x, _819.y, _819.z, r1.w);
    float3 _826 = r2.xxx * r1.xyz;
    r2 = float4(r2.x, _826.x, _826.y, _826.z);
    float3 _838 = ((-r1.xyz) * r2.xxx) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r1 = float4(_838.x, _838.y, _838.z, r1.w);
    float4 _846 = r0;
    _846.x = (-r3.w) + asfloat(1065353216u);
    r0 = _846;
    float4 _857 = r4;
    _857.w = (cb2_m[7].w * r0.x) + r3.w;
    r4 = _857;
    float4 _865 = r0;
    _865.x = r0.x * cb2_m[8].x;
    r0 = _865;
    float3 _874 = (r0.xxx * r1.xyz) + r2.yzw;
    r1 = float4(_874.x, _874.y, _874.z, r1.w);
    float3 _884 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_884.x, _884.y, _884.z, r0.w);
    float4 _893 = r0;
    _893.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _893;
    float3 _899 = r0.xyz * r0.www;
    r0 = float4(_899.x, _899.y, _899.z, r0.w);
    float3 _916 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r4 = float4(_916.x, _916.y, _916.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _947 = gl_FragCoord;
    _947.w = 1.0f / _947.w;
    shader_in[0] = float4(_947.xy.x, _947.xy.y, shader_in[0].z, shader_in[0].w);
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
