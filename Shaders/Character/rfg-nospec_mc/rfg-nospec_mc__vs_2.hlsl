cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;
static int4 v9;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[10];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _75 = r0;
    _75.x = shader_in[8].y + shader_in[8].x;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[8].z;
    r0 = _83;
    float4 _91 = r0;
    _91.x = r0.x + shader_in[8].w;
    r0 = _91;
    float4 _98 = r0;
    _98.x = asfloat(1065353216u) / r0.x;
    r0 = _98;
    float3 _113 = (shader_in[6].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_113.x, _113.y, _113.z, r1.w);
    float4 _118 = r1;
    _118.w = asfloat(1065353216u);
    r1 = _118;
    r2 = asfloat(asint(shader_in[9]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _135 = asint(r2.y);
    r3 = shader_in[8].yyyy * float4(cb4_m[_135].x, cb4_m[_135].y, cb4_m[_135].z, cb4_m[_135].w);
    int _156 = asint(r2.x);
    r3 = (shader_in[8].xxxx * float4(cb4_m[_156].x, cb4_m[_156].y, cb4_m[_156].z, cb4_m[_156].w)) + r3;
    int _175 = asint(r2.z);
    r3 = (shader_in[8].zzzz * float4(cb4_m[_175].x, cb4_m[_175].y, cb4_m[_175].z, cb4_m[_175].w)) + r3;
    int _194 = asint(r2.w);
    r3 = (shader_in[8].wwww * float4(cb4_m[_194].x, cb4_m[_194].y, cb4_m[_194].z, cb4_m[_194].w)) + r3;
    float4 _223 = r4;
    _223.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _223;
    int _232 = asint(r2.y) + 1;
    r5 = shader_in[8].yyyy * float4(cb4_m[_232].x, cb4_m[_232].y, cb4_m[_232].z, cb4_m[_232].w);
    int _251 = asint(r2.x) + 1;
    r5 = (shader_in[8].xxxx * float4(cb4_m[_251].x, cb4_m[_251].y, cb4_m[_251].z, cb4_m[_251].w)) + r5;
    int _271 = asint(r2.z) + 1;
    r5 = (shader_in[8].zzzz * float4(cb4_m[_271].x, cb4_m[_271].y, cb4_m[_271].z, cb4_m[_271].w)) + r5;
    int _291 = asint(r2.w) + 1;
    r5 = (shader_in[8].wwww * float4(cb4_m[_291].x, cb4_m[_291].y, cb4_m[_291].z, cb4_m[_291].w)) + r5;
    float4 _319 = r4;
    _319.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _319;
    int _328 = asint(r2.y) + 2;
    r6 = shader_in[8].yyyy * float4(cb4_m[_328].x, cb4_m[_328].y, cb4_m[_328].z, cb4_m[_328].w);
    int _347 = asint(r2.x) + 2;
    r6 = (shader_in[8].xxxx * float4(cb4_m[_347].x, cb4_m[_347].y, cb4_m[_347].z, cb4_m[_347].w)) + r6;
    int _367 = asint(r2.z) + 2;
    r6 = (shader_in[8].zzzz * float4(cb4_m[_367].x, cb4_m[_367].y, cb4_m[_367].z, cb4_m[_367].w)) + r6;
    int _387 = asint(r2.w) + 2;
    r2 = (shader_in[8].wwww * float4(cb4_m[_387].x, cb4_m[_387].y, cb4_m[_387].z, cb4_m[_387].w)) + r6;
    float4 _415 = r4;
    _415.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _415;
    float3 _421 = r0.xxx * r4.xyz;
    r1 = float4(_421.x, _421.y, _421.z, r1.w);
    float4 _425 = r1;
    _425.w = asfloat(1065353216u);
    r1 = _425;
    float4 _436 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _450 = r4;
    _450.x = mad(_436.w, r1.w, mad(_436.z, r1.z, mad(_436.y, r1.y, _436.x * r1.x)));
    r4 = _450;
    float4 _461 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _475 = r4;
    _475.y = mad(_461.w, r1.w, mad(_461.z, r1.z, mad(_461.y, r1.y, _461.x * r1.x)));
    r4 = _475;
    float4 _486 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _500 = r4;
    _500.z = mad(_486.w, r1.w, mad(_486.z, r1.z, mad(_486.y, r1.y, _486.x * r1.x)));
    r4 = _500;
    float4 _503 = r4;
    _503.w = asfloat(1065353216u);
    r4 = _503;
    float4 _514 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _528 = o0;
    _528.x = mad(_514.w, r4.w, mad(_514.z, r4.z, mad(_514.y, r4.y, _514.x * r4.x)));
    o0 = _528;
    float4 _539 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _553 = o0;
    _553.y = mad(_539.w, r4.w, mad(_539.z, r4.z, mad(_539.y, r4.y, _539.x * r4.x)));
    o0 = _553;
    float4 _564 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _578 = o0;
    _578.z = mad(_564.w, r4.w, mad(_564.z, r4.z, mad(_564.y, r4.y, _564.x * r4.x)));
    o0 = _578;
    float4 _590 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _604 = o0;
    _604.w = mad(_590.w, r4.w, mad(_590.z, r4.z, mad(_590.y, r4.y, _590.x * r4.x)));
    o0 = _604;
    float2 _610 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, _610.x, _610.y, r0.w);
    float2 _621 = r0.yz * float2(cb2_m[1].y, cb2_m[1].z);
    r0 = float4(r0.x, _621.x, _621.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _642 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _642.x, _642.y, _642.z);
    float3 _652 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_652.x, _652.y, _652.z, r1.w);
    float3 _661 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _661.x, _661.y, _661.z);
    float4 _677 = r1;
    _677.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _677;
    float4 _682 = r1;
    _682.x = rsqrt(r1.x);
    r1 = _682;
    float3 _688 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _688.x, _688.y, _688.z);
    float4 _704 = r1;
    _704.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _704;
    float4 _719 = r1;
    _719.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _719;
    float4 _734 = r1;
    _734.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _734;
    float3 _740 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _740.x, _740.y, _740.z);
    float4 _756 = r1;
    _756.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _756;
    float4 _761 = r1;
    _761.x = rsqrt(r1.x);
    r1 = _761;
    float3 _767 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _767.x, _767.y, _767.z);
    float3 _777 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _789 = r1;
    _789.x = mad(_777.z, r0.yzw.z, mad(_777.y, r0.yzw.y, _777.x * r0.yzw.x));
    r1 = _789;
    float3 _798 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _810 = r1;
    _810.y = mad(_798.z, r0.yzw.z, mad(_798.y, r0.yzw.y, _798.x * r0.yzw.x));
    r1 = _810;
    float3 _819 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _831 = r1;
    _831.z = mad(_819.z, r0.yzw.z, mad(_819.y, r0.yzw.y, _819.x * r0.yzw.x));
    r1 = _831;
    float4 _846 = r0;
    _846.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _846;
    float4 _851 = r0;
    _851.y = rsqrt(r0.y);
    r0 = _851;
    float3 _857 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _857.x, _857.y, _857.z);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _882 = r3;
    _882.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _882;
    float4 _897 = r3;
    _897.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _897;
    float4 _912 = r3;
    _912.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _912;
    float3 _918 = r0.xxx * r3.xyz;
    r1 = float4(_918.x, _918.y, _918.z, r1.w);
    float4 _934 = r0;
    _934.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _934;
    float4 _939 = r0;
    _939.x = rsqrt(r0.x);
    r0 = _939;
    float3 _945 = r0.xxx * r1.xyz;
    r1 = float4(_945.x, _945.y, _945.z, r1.w);
    float3 _955 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _967 = r2;
    _967.x = mad(_955.z, r1.xyz.z, mad(_955.y, r1.xyz.y, _955.x * r1.xyz.x));
    r2 = _967;
    float3 _976 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _988 = r2;
    _988.y = mad(_976.z, r1.xyz.z, mad(_976.y, r1.xyz.y, _976.x * r1.xyz.x));
    r2 = _988;
    float3 _997 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _1009 = r2;
    _1009.z = mad(_997.z, r1.xyz.z, mad(_997.y, r1.xyz.y, _997.x * r1.xyz.x));
    r2 = _1009;
    float4 _1024 = r0;
    _1024.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1024;
    float4 _1029 = r0;
    _1029.x = rsqrt(r0.x);
    r0 = _1029;
    float3 _1035 = r0.xxx * r2.xyz;
    r1 = float4(_1035.x, _1035.y, _1035.z, r1.w);
    float3 _1042 = r0.wyz * r1.yzx;
    r2 = float4(_1042.x, _1042.y, _1042.z, r2.w);
    float3 _1053 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1053.x, _1053.y, _1053.z, r2.w);
    float3 _1063 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1075 = o2;
    _1075.z = mad(_1063.z, r0.yzw.z, mad(_1063.y, r0.yzw.y, _1063.x * r0.yzw.x));
    o2 = _1075;
    float3 _1084 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1096 = o2;
    _1096.x = mad(_1084.z, r1.xyz.z, mad(_1084.y, r1.xyz.y, _1084.x * r1.xyz.x));
    o2 = _1096;
    float3 _1102 = r1.www * r2.xyz;
    r0 = float4(_1102.x, _1102.y, _1102.z, r0.w);
    float3 _1112 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _1124 = o2;
    _1124.y = mad(_1112.z, r0.xyz.z, mad(_1112.y, r0.xyz.y, _1112.x * r0.xyz.x));
    o2 = _1124;
    float2 _1130 = float2(asint(shader_in[1].xy));
    r0 = float4(_1130.x, _1130.y, r0.z, r0.w);
    float2 _1136 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(_1136.x, _1136.y, o3.z, o3.w);
    float2 _1143 = float2(asint(shader_in[3].xy));
    r0 = float4(_1143.x, _1143.y, r0.z, r0.w);
    float2 _1149 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float4(o3.x, o3.y, _1149.x, _1149.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1158 = asfloat(v1);
    shader_in[1] = float4(_1158.x, _1158.y, shader_in[1].z, shader_in[1].w);
    float2 _1163 = asfloat(v2);
    shader_in[2] = float4(_1163.x, _1163.y, shader_in[2].z, shader_in[2].w);
    float2 _1168 = asfloat(v3);
    shader_in[3] = float4(_1168.x, _1168.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
    shader_in[9] = asfloat(v9);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    v9 = stage_input.v9;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
