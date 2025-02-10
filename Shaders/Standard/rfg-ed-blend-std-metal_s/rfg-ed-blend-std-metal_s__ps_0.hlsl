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
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
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
    float3 _160 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    _206.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _206;
    float4 _211 = r0;
    _211.w = rsqrt(r0.w);
    r0 = _211;
    float4 _229 = r1;
    _229.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _229;
    float4 _234 = r1;
    _234.x = rsqrt(r1.x);
    r1 = _234;
    float3 _241 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _252 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_252.x, _252.y, _252.z, r2.w);
    float4 _272 = r0;
    _272.w = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _272;
    float4 _279 = r0;
    _279.w = r0.w + asfloat(925353388u);
    r0 = _279;
    float4 _294 = r1;
    _294.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _294;
    float4 _299 = r1;
    _299.x = rsqrt(r1.x);
    r1 = _299;
    float3 _305 = r1.xxx * r2.xyz;
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float4 _322 = r1;
    _322.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _322;
    float4 _339 = r0;
    _339.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _339;
    float4 _349 = r0;
    _349.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _349;
    float4 _354 = r0;
    _354.y = log2(r1.x);
    r0 = _354;
    float4 _363 = r1;
    _363.x = r0.y * cb2_m[6].x;
    r1 = _363;
    float4 _371 = r1;
    _371.y = r0.y * cb2_m[5].y;
    r1 = _371;
    float4 _380 = r1;
    _380.z = r0.y * cb2_m[4].w;
    r1 = _380;
    float3 _384 = exp2(r1.zxy);
    r1 = float4(_384.x, _384.y, _384.z, r1.w);
    float2 _395 = r1.yz * float2(cb2_m[5].w, cb2_m[5].x);
    r0 = float4(r0.x, _395.x, _395.y, r0.w);
    float4 _404 = r1;
    _404.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _404;
    float4 _411 = r1;
    _411.x = r1.y * r1.x;
    r1 = _411;
    float4 _418 = r1;
    _418.x = r1.x / r0.w;
    r1 = _418;
    float4 _424 = r1;
    _424.x = r1.x + asfloat(3212836864u);
    r1 = _424;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float4 _441 = r1;
    _441.x = (r2.w * r1.x) + asfloat(1065353216u);
    r1 = _441;
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _462 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _462.x, _462.y, _462.z);
    float3 _469 = r1.yzw * r1.xxx;
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float3 _490 = ((-r1.xxx) * r1.yzw) + r4.xyz;
    r5 = float4(_490.x, _490.y, _490.z, r5.w);
    float4 _500 = r1;
    _500.x = r4.w * cb2_m[4].z;
    r1 = _500;
    float4 _511 = r3;
    _511.w = ((-r4.w) * cb2_m[4].z) + asfloat(1065353216u);
    r3 = _511;
    float3 _520 = (r1.xxx * r5.xyz) + r3.xyz;
    r3 = float4(_520.x, _520.y, _520.z, r3.w);
    r5 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].zwzz.xy);
    float4 _537 = r4;
    _537.w = r5.w * cb2_m[3].x;
    r4 = _537;
    float3 _544 = (-r3.xyz) + r5.xyz;
    r6 = float4(_544.x, _544.y, _544.z, r6.w);
    float3 _555 = (r4.www * r6.xyz) + r3.xyz;
    r3 = float4(_555.x, _555.y, _555.z, r3.w);
    float3 _563 = r4.xyz + (-r5.xyz);
    r4 = float4(_563.x, _563.y, _563.z, r4.w);
    float4 _572 = r5;
    _572.x = (-cb2_m[3].y) + asfloat(1065353216u);
    r5 = _572;
    float4 _579 = r5;
    _579.x = r1.x * r5.x;
    r5 = _579;
    float4 _589 = r1;
    _589.x = (r4.w * r3.w) + r1.x;
    r1 = _589;
    float4 _596 = r3;
    _596.w = r4.w * r5.x;
    r3 = _596;
    float3 _605 = (r3.www * r4.xyz) + r3.xyz;
    r3 = float4(_605.x, _605.y, _605.z, r3.w);
    float3 _612 = r0.www * r3.xyz;
    r3 = float4(_612.x, _612.y, _612.z, r3.w);
    float4 _620 = r0;
    _620.w = (-r1.x) + asfloat(1065353216u);
    r0 = _620;
    float3 _632 = r0.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_632.x, _632.y, _632.z, r4.w);
    float3 _649 = (r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r4.xyz);
    r5 = float4(_649.x, _649.y, _649.z, r5.w);
    float3 _659 = (r2.www * r5.xyz) + r4.xyz;
    r4 = float4(_659.x, _659.y, _659.z, r4.w);
    float3 _666 = r2.xyz * r4.xyz;
    r2 = float4(_666.x, _666.y, _666.z, r2.w);
    float3 _673 = r0.www * r2.xyz;
    r0 = float4(r0.x, _673.x, _673.y, _673.z);
    float2 _685 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_685.x, _685.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _700 = r1;
    _700.x = max(r2.y, asfloat(1028443341u));
    r1 = _700;
    float3 _706 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _706.x, _706.y, _706.z);
    float3 _716 = (r3.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _716.x, _716.y, _716.z);
    float3 _729 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _729.x, _729.y, _729.z);
    float4 _738 = r1;
    _738.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _738;
    float4 _747 = r1;
    _747.x = abs(r1.x) + abs(r1.x);
    r1 = _747;
    float4 _757 = r1;
    _757.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _757;
    float4 _763 = r1;
    _763.x = max(r1.x, asfloat(0u));
    r1 = _763;
    float4 _772 = r1;
    _772.x = r1.x * cb0_m[7].y;
    r1 = _772;
    float3 _796 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(r2.x, _796.x, _796.y, _796.z);
    float3 _812 = (r0.xxx * r2.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(r2.x, _812.x, _812.y, _812.z);
    float3 _826 = (-r2.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_826.x, _826.y, _826.z, r3.w);
    float3 _836 = (r1.xxx * r3.xyz) + r2.yzw;
    r2 = float4(r2.x, _836.x, _836.y, _836.z);
    float3 _843 = r2.xxx * r2.yzw;
    r2 = float4(_843.x, _843.y, _843.z, r2.w);
    float3 _853 = (r2.xyz * r1.yzw) + r0.yzw;
    r0 = float4(_853.x, _853.y, _853.z, r0.w);
    float4 _862 = r0;
    _862.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _862;
    float3 _868 = r0.xyz * r0.www;
    r0 = float4(_868.x, _868.y, _868.z, r0.w);
    float3 _885 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_885.x, _885.y, _885.z, r0.w);
    float4 _889 = r0;
    _889.w = asfloat(1065353216u);
    r0 = _889;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _921 = gl_FragCoord;
    _921.w = 1.0f / _921.w;
    shader_in[0] = float4(_921.xy.x, _921.xy.y, shader_in[0].z, shader_in[0].w);
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
